/*
 * audio_processing.c
 *
 *  Created on: Nov 6, 2019
 *      Author: andersliss
 */


/*
 * Includes
 */
#include "arm_math.h"
#include "stm32746g_discovery_audio.h"
#include "feature_extraction.h"
#include "arm_common_tables.h"
#include "arm_const_structs.h"
#include "feature_extraction.h"
#include "window.h"
#include "common_tables.h"

/*
 * Defines
 */

#define buffersize 2048
#define n_fft 2048
#define nmels 30

/*
 * Variables
 */

float32_t scratcher[buffersize];
float32_t output[nmels];
static uint8_t columncounter = 0;
static float32_t aSpectrogram[900] = {0};
static float32_t spectrogram[900];
static float32_t dense_out[4] = {0.0, 0.0, 0.0, 0.0};
extern const float32_t hannWin_512[512];
static uint8_t resultbuf[6000];
uint8_t *a = &resultbuf[0];

uint16_t tuta, icketuta, yaris, pling;
uint8_t nncheck;


// -- arm CMSIS instances & Spectrogram typedef initializations --
static arm_rfft_fast_instance_f32 rfft;
static SpectrogramTypeDef S;
static MelFilterTypeDef M;
static MelSpectrogramTypeDef Mel;
static LogMelSpectrogramTypeDef LogMel;

static uint32_t pMelFilterStartIndices[30];
static uint32_t pMelFilterStopIndices[30];
static float32_t pMelFilterCoefs[1754];

static void AmpConverter(float32_t *input);
static void Spectro_Init(void);
static void Spectrogram_Run(float32_t *input);


/*
 * Audio processing functions ----------------------------
 *
 */

/*
 * @brief Initialization function of structs used with Middleware/ST/STM32_AI_AudioPreprocessing
 */
static void Spectro_Init(void)
{

	  // Initializing real fourier transform instance (RFFT) struct
	  arm_rfft_fast_init_f32(&rfft, n_fft);

	  // Init Spectrogram struct
	  S.pRfft = &rfft;					         /*!< points to the real FFT instance */
	  S.Type = SPECTRUM_TYPE_POWER;         	 /*!< spectrum type */
	  S.pWindow = (float32_t *) hannWin_2048;    /*!< points to the window function. The length must be equal to FrameLen. */
	  S.SampRate = 44100;                        /*!< sampling rate of the input signal. */
	  S.FrameLen = buffersize;                   /*!< length of the input signal. */
	  S.FFTLen = n_fft;                     /*!< length of the real FFT. */
	  S.pScratch = (float32_t *) scratcher;					 /*!< point to the temporary calculation buffer of length FFTLen */

	  // Init Mel filter struct
	  M.pStartIndices = (uint32_t *) pMelFilterStartIndices;
	  M.pStopIndices  = (uint32_t *) pMelFilterStopIndices;
	  M.pCoefficients = (float32_t *) pMelFilterCoefs;
	  M.NumMels   = 30;
	  M.FFTLen    = n_fft;
	  M.SampRate  = 44100;
	  M.FMin      = 0.0;
	  M.FMax      = 20000.0;
	  M.Formula   = MEL_SLANEY;
	  M.Normalize = 1;
	  M.Mel2F     = 0;
	  MelFilterbank_Init(&M);

	  // Init Mel Spectrogram struct
	  Mel.SpectrogramConf = &S;
	  Mel.MelFilter = &M;

	  // Init LogMel Spectrogram struct
	  LogMel.MelSpectrogramConf = &Mel;
	  LogMel.LogFormula = LOGMELSPECTROGRAM_SCALE_DB;
	  LogMel.Ref = 1.0;
	  LogMel.TopdB = 80.0;
}

/*
 * @brief Audio preprocessing function for creating LogMelSpectrograms
 * @param 	*input		points to audio input
 * @return 	None
 */
void Spectrogram_Run(float32_t *input)
{

	// Create spectrogram column
	LogMelSpectrogramColumn(&LogMel, input, (float32_t *) output);

	// Reshape column
	for (uint32_t i = 0; i < nmels; i++) {
	  aSpectrogram[i * 30 + columncounter] = output[i];
	}
	columncounter++;

//	 When full: Implement AI inference
	if (columncounter == 30)
	{
		columncounter = 0;
		AmpConverter((float32_t *) aSpectrogram);
		MX_X_CUBE_AI_Process((ai_float*)spectrogram, (ai_float*)dense_out);  // Calling function MX_X_CUBE_AI_Process(ai_float *input, ai_float *output)
		nncheck = 1;

		if (dense_out[0] > 0.5)
		{
			icketuta += 1;
			memcpy(a,"0",1);
		} else if (dense_out[1] > 0.5)
		{
 			yaris += 1;
 			memcpy(a,"1",1);
		} else if (dense_out[2] > 0.5)
		{
			pling += 1;
			memcpy(a,"2",1);
		} else if (dense_out[3] > 0.5)
		{
			tuta += 1;
			memcpy(a,"3",1);
		}

		a++;
	}
}

/*
 * @brief Scaling output to values ranging between 0-1 for use with neural network
 * @param 	*input		points vector with LogMelSpectrogram values
 * @return 	None
 */

static void AmpConverter(float32_t *input)
{
	float32_t min, max;
	uint32_t index;
	float32_t processed_vector[900];
	float32_t meanval[150] = {0};

	arm_max_f32(input,900,&max,&index);
	max = -max;
	arm_offset_f32(input,max,(float32_t *) processed_vector,900);
	arm_min_f32((float32_t *) processed_vector,900,&min,&index);
	float32_t scale = 1/min;
	arm_scale_f32((float32_t *) processed_vector,scale,input,900);

	for (uint16_t t = 0; t < 150; t++)
	{
		for (uint8_t a = 0; a < 6; a++)
		{
			meanval[t] += input[t*6 + a];
		}

		for (uint8_t a = 0; a < 6; a++)
		{
			spectrogram[t*6 + a] = meanval[t]/6;
		}
	}
}
