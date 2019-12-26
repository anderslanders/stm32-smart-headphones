# stm32-smart-headphones
Resources for the master thesis done in the autumn of 2019. Title of thesis: IMPLEMENTATION OF A NEURAL NETWORK ON A MICROCONTROLLER FOR CONSTRUCTION OF SMART NOISE REDUCING HEADPHONES

#Required software:
1. STM32CubeIDE (1.0.2 and later confirmed working)
  - X-Cube AI 4.0.0 software package
2. Python environment
  - Keras 2.2.4
  - Tensorflow 1.5.0


#Usage:
1. Import 'project' into STM32CubeIDE.
2. Build and run in debug mode on the STM32F746g-discovery board.
 - Prediction outputs are produced in variable "dense_out"

##Changing network:
1. In file additional files/Models: Unzip preferred network type trained with specific sample length and number of mel-bins.
 - Within are also training, testing and validation data. Validation data can be used with the X-Cube AI to validate the network.
3. On STM32CubeIDE: Open project file "project.ioc"
 - In "Pinout & Configuration", navigate to "Additional Software"
 - Choose "STMicroelectronics.X-Cube-AI 4.0.0 Mode and Configuration"
 - In the configuration window, navigate to "network_multitest"
 - Choose Keras network to implement as "Saved Model" and load the .h5 model file.
 - If needed: choose "X_val.csv" and "y_val.csv" to perform validation.
4. Navigate to Project Manager -> Advanced Settings
 - Check box for MX_X_CUBE_AI_Process under "Not Generate Function Call"
5. Generate code.

##Getting the implementation to work:
1. After code generation, open properties for project.
2. Navigate to C/C++ General -> Paths and Symbols
 - Click "Import Settings..." and choose "Include Settings" from the git repository under "additional files". After import the window closes.
 - Navigate again to C/C++ General -> Paths and Symbols
 - Navigate to Source Location
 - Choose "Add Folder" and choose: "Middleware -> ST -> STM32_AI_AudioPreprocessing_Library -> Src"
3. Finally, the the following function calls need to be replaced:
 - void MX_X_CUBE_AI_Process() -> void MX_X_CUBE_AI_Process(ai_float *input, ai_float *output); in Inc/app_x-cube-ai.h
 - void MX_X_CUBE_AI_Process() -> void MX_X_CUBE_AI_Process(ai_float *input, ai_float *output) in Src/app_x-cube-ai.c
