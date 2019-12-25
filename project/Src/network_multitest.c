/**
  ******************************************************************************
  * @file    network_multitest.c
  * @author  AST Embedded Analytics Research Platform
  * @date    Fri Dec 20 12:27:18 2019
  * @brief   AI Tool Automatic Code Generator for Embedded NN computing
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2018 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */



#include "network_multitest.h"

#include "ai_platform_interface.h"
#include "ai_math_helpers.h"

#include "core_common.h"
#include "layers.h"

#undef AI_TOOLS_VERSION_MAJOR
#undef AI_TOOLS_VERSION_MINOR
#undef AI_TOOLS_VERSION_MICRO
#define AI_TOOLS_VERSION_MAJOR 4
#define AI_TOOLS_VERSION_MINOR 0
#define AI_TOOLS_VERSION_MICRO 0

#undef AI_TOOLS_API_VERSION_MAJOR
#undef AI_TOOLS_API_VERSION_MINOR
#undef AI_TOOLS_API_VERSION_MICRO
#define AI_TOOLS_API_VERSION_MAJOR 1
#define AI_TOOLS_API_VERSION_MINOR 3
#define AI_TOOLS_API_VERSION_MICRO 0

#undef AI_NET_OBJ_INSTANCE
#define AI_NET_OBJ_INSTANCE g_network_multitest
 
#undef AI_NETWORK_MULTITEST_MODEL_SIGNATURE
#define AI_NETWORK_MULTITEST_MODEL_SIGNATURE     "cb126bb684ef7584519d0c0cc61398a7"

#ifndef AI_TOOLS_REVISION_ID
#define AI_TOOLS_REVISION_ID     "(rev-)"
#endif

#undef AI_TOOLS_DATE_TIME
#define AI_TOOLS_DATE_TIME   "Fri Dec 20 12:27:18 2019"

#undef AI_TOOLS_COMPILE_TIME
#define AI_TOOLS_COMPILE_TIME    __DATE__ " " __TIME__

#undef AI_NETWORK_MULTITEST_N_BATCHES
#define AI_NETWORK_MULTITEST_N_BATCHES         (1)

/**  Forward network declaration section  *************************************/
AI_STATIC ai_network AI_NET_OBJ_INSTANCE;


/**  Forward network array declarations  **************************************/
AI_STATIC ai_array dense_28_bias_array;   /* Array #0 */
AI_STATIC ai_array dense_28_weights_array;   /* Array #1 */
AI_STATIC ai_array dense_27_bias_array;   /* Array #2 */
AI_STATIC ai_array dense_27_weights_array;   /* Array #3 */
AI_STATIC ai_array dense_26_bias_array;   /* Array #4 */
AI_STATIC ai_array dense_26_weights_array;   /* Array #5 */
AI_STATIC ai_array dense_25_bias_array;   /* Array #6 */
AI_STATIC ai_array dense_25_weights_array;   /* Array #7 */
AI_STATIC ai_array input_0_output_array;   /* Array #8 */
AI_STATIC ai_array dense_25_output_array;   /* Array #9 */
AI_STATIC ai_array dense_26_output_array;   /* Array #10 */
AI_STATIC ai_array max_pooling2d_23_output_array;   /* Array #11 */
AI_STATIC ai_array dense_27_output_array;   /* Array #12 */
AI_STATIC ai_array max_pooling2d_24_output_array;   /* Array #13 */
AI_STATIC ai_array dense_28_output_array;   /* Array #15 */
AI_STATIC ai_array dense_28_nl_output_array;   /* Array #16 */


/**  Forward network tensor declarations  *************************************/
AI_STATIC ai_tensor dense_28_bias;   /* Tensor #0 */
AI_STATIC ai_tensor dense_28_weights;   /* Tensor #1 */
AI_STATIC ai_tensor dense_27_bias;   /* Tensor #2 */
AI_STATIC ai_tensor dense_27_weights;   /* Tensor #3 */
AI_STATIC ai_tensor dense_26_bias;   /* Tensor #4 */
AI_STATIC ai_tensor dense_26_weights;   /* Tensor #5 */
AI_STATIC ai_tensor dense_25_bias;   /* Tensor #6 */
AI_STATIC ai_tensor dense_25_weights;   /* Tensor #7 */
AI_STATIC ai_tensor input_0_output;   /* Tensor #8 */
AI_STATIC ai_tensor dense_25_output;   /* Tensor #9 */
AI_STATIC ai_tensor dense_26_output;   /* Tensor #10 */
AI_STATIC ai_tensor max_pooling2d_23_output;   /* Tensor #11 */
AI_STATIC ai_tensor dense_27_output;   /* Tensor #12 */
AI_STATIC ai_tensor max_pooling2d_24_output;   /* Tensor #13 */
AI_STATIC ai_tensor max_pooling2d_24_output0;   /* Tensor #14 */
AI_STATIC ai_tensor dense_28_output;   /* Tensor #15 */
AI_STATIC ai_tensor dense_28_nl_output;   /* Tensor #16 */


/**  Forward network tensor chain declarations  *******************************/
AI_STATIC_CONST ai_tensor_chain dense_25_chain;   /* Chain #0 */
AI_STATIC_CONST ai_tensor_chain dense_26_chain;   /* Chain #1 */
AI_STATIC_CONST ai_tensor_chain max_pooling2d_23_chain;   /* Chain #2 */
AI_STATIC_CONST ai_tensor_chain dense_27_chain;   /* Chain #3 */
AI_STATIC_CONST ai_tensor_chain max_pooling2d_24_chain;   /* Chain #4 */
AI_STATIC_CONST ai_tensor_chain dense_28_chain;   /* Chain #5 */
AI_STATIC_CONST ai_tensor_chain dense_28_nl_chain;   /* Chain #6 */


/**  Subgraph network operator tensor chain declarations  *********************/


/**  Subgraph network operator declarations  *********************************/


/**  Forward network layer declarations  **************************************/
AI_STATIC ai_layer_dense dense_25_layer; /* Layer #0 */
AI_STATIC ai_layer_dense dense_26_layer; /* Layer #1 */
AI_STATIC ai_layer_pool max_pooling2d_23_layer; /* Layer #2 */
AI_STATIC ai_layer_dense dense_27_layer; /* Layer #3 */
AI_STATIC ai_layer_pool max_pooling2d_24_layer; /* Layer #4 */
AI_STATIC ai_layer_dense dense_28_layer; /* Layer #5 */
AI_STATIC ai_layer_nl dense_28_nl_layer; /* Layer #6 */


/**  Array declarations section  **********************************************/
AI_ARRAY_OBJ_DECLARE(
  dense_28_bias_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 2,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  dense_28_weights_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 1960,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  dense_27_bias_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 20,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  dense_27_weights_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 400,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  dense_26_bias_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 20,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  dense_26_weights_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 400,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  dense_25_bias_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 20,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  dense_25_weights_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 20,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  input_0_output_array, AI_ARRAY_FORMAT_FLOAT|AI_FMT_FLAG_IS_IO,
  NULL, NULL, 900,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  dense_25_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 18000,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  dense_26_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 18000,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  max_pooling2d_23_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 4500,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  dense_27_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 4500,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  max_pooling2d_24_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 980,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  dense_28_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 2,
  AI_STATIC)
AI_ARRAY_OBJ_DECLARE(
  dense_28_nl_output_array, AI_ARRAY_FORMAT_FLOAT|AI_FMT_FLAG_IS_IO,
  NULL, NULL, 2,
  AI_STATIC)


/**  Tensor declarations section  *********************************************/
AI_TENSOR_OBJ_DECLARE(
  dense_28_bias,
  AI_SHAPE_INIT(1, 1, 2, 1),
  AI_STRIDE_INIT(8, 8, 4, 4),
  &dense_28_bias_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  dense_28_weights,
  AI_SHAPE_INIT(1, 1, 2, 980),
  AI_STRIDE_INIT(7840, 7840, 3920, 4),
  &dense_28_weights_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  dense_27_bias,
  AI_SHAPE_INIT(1, 1, 20, 1),
  AI_STRIDE_INIT(80, 80, 4, 4),
  &dense_27_bias_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  dense_27_weights,
  AI_SHAPE_INIT(1, 1, 20, 20),
  AI_STRIDE_INIT(1600, 1600, 80, 4),
  &dense_27_weights_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  dense_26_bias,
  AI_SHAPE_INIT(1, 1, 20, 1),
  AI_STRIDE_INIT(80, 80, 4, 4),
  &dense_26_bias_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  dense_26_weights,
  AI_SHAPE_INIT(1, 1, 20, 20),
  AI_STRIDE_INIT(1600, 1600, 80, 4),
  &dense_26_weights_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  dense_25_bias,
  AI_SHAPE_INIT(1, 1, 20, 1),
  AI_STRIDE_INIT(80, 80, 4, 4),
  &dense_25_bias_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  dense_25_weights,
  AI_SHAPE_INIT(1, 1, 20, 1),
  AI_STRIDE_INIT(80, 80, 4, 4),
  &dense_25_weights_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  input_0_output,
  AI_SHAPE_INIT(30, 30, 1, 1),
  AI_STRIDE_INIT(120, 4, 4, 4),
  &input_0_output_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  dense_25_output,
  AI_SHAPE_INIT(30, 30, 20, 1),
  AI_STRIDE_INIT(2400, 80, 4, 4),
  &dense_25_output_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  dense_26_output,
  AI_SHAPE_INIT(30, 30, 20, 1),
  AI_STRIDE_INIT(2400, 80, 4, 4),
  &dense_26_output_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  max_pooling2d_23_output,
  AI_SHAPE_INIT(15, 15, 20, 1),
  AI_STRIDE_INIT(1200, 80, 4, 4),
  &max_pooling2d_23_output_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  dense_27_output,
  AI_SHAPE_INIT(15, 15, 20, 1),
  AI_STRIDE_INIT(1200, 80, 4, 4),
  &dense_27_output_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  max_pooling2d_24_output,
  AI_SHAPE_INIT(7, 7, 20, 1),
  AI_STRIDE_INIT(560, 80, 4, 4),
  &max_pooling2d_24_output_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  max_pooling2d_24_output0,
  AI_SHAPE_INIT(1, 1, 980, 1),
  AI_STRIDE_INIT(3920, 3920, 4, 4),
  &max_pooling2d_24_output_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  dense_28_output,
  AI_SHAPE_INIT(1, 1, 2, 1),
  AI_STRIDE_INIT(8, 8, 4, 4),
  &dense_28_output_array,
  AI_STATIC)
AI_TENSOR_OBJ_DECLARE(
  dense_28_nl_output,
  AI_SHAPE_INIT(1, 1, 2, 1),
  AI_STRIDE_INIT(8, 8, 4, 4),
  &dense_28_nl_output_array,
  AI_STATIC)


/**  Layer declarations section  **********************************************/



AI_TENSOR_CHAIN_OBJ_DECLARE(
  dense_25_chain, AI_STATIC_CONST, 
  AI_TENSOR_LIST_ENTRY(&input_0_output),
  AI_TENSOR_LIST_ENTRY(&dense_25_output),
  AI_TENSOR_LIST_ENTRY(&dense_25_weights, &dense_25_bias),
  AI_TENSOR_LIST_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  dense_25_layer, 0,
  DENSE_TYPE,
  dense, forward_dense,
  &AI_NET_OBJ_INSTANCE, &dense_26_layer, AI_STATIC,
  .tensors = &dense_25_chain, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  dense_26_chain, AI_STATIC_CONST, 
  AI_TENSOR_LIST_ENTRY(&dense_25_output),
  AI_TENSOR_LIST_ENTRY(&dense_26_output),
  AI_TENSOR_LIST_ENTRY(&dense_26_weights, &dense_26_bias),
  AI_TENSOR_LIST_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  dense_26_layer, 2,
  DENSE_TYPE,
  dense, forward_dense,
  &AI_NET_OBJ_INSTANCE, &max_pooling2d_23_layer, AI_STATIC,
  .tensors = &dense_26_chain, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  max_pooling2d_23_chain, AI_STATIC_CONST, 
  AI_TENSOR_LIST_ENTRY(&dense_26_output),
  AI_TENSOR_LIST_ENTRY(&max_pooling2d_23_output),
  AI_TENSOR_LIST_EMPTY,
  AI_TENSOR_LIST_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  max_pooling2d_23_layer, 3,
  POOL_TYPE,
  pool, forward_mp,
  &AI_NET_OBJ_INSTANCE, &dense_27_layer, AI_STATIC,
  .tensors = &max_pooling2d_23_chain, 
  .pool_size = AI_SHAPE_2D_INIT(2, 2), 
  .pool_stride = AI_SHAPE_2D_INIT(2, 2), 
  .pool_pad = AI_SHAPE_ND_INIT(4, 0, 0, 0, 0), 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  dense_27_chain, AI_STATIC_CONST, 
  AI_TENSOR_LIST_ENTRY(&max_pooling2d_23_output),
  AI_TENSOR_LIST_ENTRY(&dense_27_output),
  AI_TENSOR_LIST_ENTRY(&dense_27_weights, &dense_27_bias),
  AI_TENSOR_LIST_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  dense_27_layer, 4,
  DENSE_TYPE,
  dense, forward_dense,
  &AI_NET_OBJ_INSTANCE, &max_pooling2d_24_layer, AI_STATIC,
  .tensors = &dense_27_chain, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  max_pooling2d_24_chain, AI_STATIC_CONST, 
  AI_TENSOR_LIST_ENTRY(&dense_27_output),
  AI_TENSOR_LIST_ENTRY(&max_pooling2d_24_output),
  AI_TENSOR_LIST_EMPTY,
  AI_TENSOR_LIST_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  max_pooling2d_24_layer, 5,
  POOL_TYPE,
  pool, forward_mp,
  &AI_NET_OBJ_INSTANCE, &dense_28_layer, AI_STATIC,
  .tensors = &max_pooling2d_24_chain, 
  .pool_size = AI_SHAPE_2D_INIT(2, 2), 
  .pool_stride = AI_SHAPE_2D_INIT(2, 2), 
  .pool_pad = AI_SHAPE_ND_INIT(4, 0, 0, 0, 0), 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  dense_28_chain, AI_STATIC_CONST, 
  AI_TENSOR_LIST_ENTRY(&max_pooling2d_24_output0),
  AI_TENSOR_LIST_ENTRY(&dense_28_output),
  AI_TENSOR_LIST_ENTRY(&dense_28_weights, &dense_28_bias),
  AI_TENSOR_LIST_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  dense_28_layer, 7,
  DENSE_TYPE,
  dense, forward_dense,
  &AI_NET_OBJ_INSTANCE, &dense_28_nl_layer, AI_STATIC,
  .tensors = &dense_28_chain, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  dense_28_nl_chain, AI_STATIC_CONST, 
  AI_TENSOR_LIST_ENTRY(&dense_28_output),
  AI_TENSOR_LIST_ENTRY(&dense_28_nl_output),
  AI_TENSOR_LIST_EMPTY,
  AI_TENSOR_LIST_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  dense_28_nl_layer, 7,
  NL_TYPE,
  nl, forward_sm,
  &AI_NET_OBJ_INSTANCE, &dense_28_nl_layer, AI_STATIC,
  .tensors = &dense_28_nl_chain, 
)


AI_NETWORK_OBJ_DECLARE(
  AI_NET_OBJ_INSTANCE,
  AI_BUFFER_OBJ_INIT(AI_BUFFER_FORMAT_U8,
                     1, 1, 11368, 1,
                     NULL),
  AI_BUFFER_OBJ_INIT(AI_BUFFER_FORMAT_U8,
                     1, 1, 144000, 1,
                     NULL),
  AI_TENSOR_LIST_IO_ENTRY(AI_FLAG_NONE, AI_NETWORK_MULTITEST_IN_NUM, &input_0_output),
  AI_TENSOR_LIST_IO_ENTRY(AI_FLAG_NONE, AI_NETWORK_MULTITEST_OUT_NUM, &dense_28_nl_output),
  &dense_25_layer, 0)



AI_DECLARE_STATIC
ai_bool network_multitest_configure_activations(
  ai_network* net_ctx, const ai_buffer* activation_buffer)
{
  AI_ASSERT(net_ctx &&  activation_buffer && activation_buffer->data)

  ai_ptr activations = AI_PTR(AI_PTR_ALIGN(activation_buffer->data, 4));
  AI_ASSERT( activations )

  {
    /* Updating activations (byte) offsets */
    input_0_output_array.data = AI_PTR(NULL);
    input_0_output_array.data_start = AI_PTR(NULL);
    dense_25_output_array.data = AI_PTR(activations + 0);
    dense_25_output_array.data_start = AI_PTR(activations + 0);
    dense_26_output_array.data = AI_PTR(activations + 72000);
    dense_26_output_array.data_start = AI_PTR(activations + 72000);
    max_pooling2d_23_output_array.data = AI_PTR(activations + 0);
    max_pooling2d_23_output_array.data_start = AI_PTR(activations + 0);
    dense_27_output_array.data = AI_PTR(activations + 18000);
    dense_27_output_array.data_start = AI_PTR(activations + 18000);
    max_pooling2d_24_output_array.data = AI_PTR(activations + 0);
    max_pooling2d_24_output_array.data_start = AI_PTR(activations + 0);
    dense_28_output_array.data = AI_PTR(activations + 3920);
    dense_28_output_array.data_start = AI_PTR(activations + 3920);
    dense_28_nl_output_array.data = AI_PTR(NULL);
    dense_28_nl_output_array.data_start = AI_PTR(NULL);
    
  }
  return true;
}



AI_DECLARE_STATIC
ai_bool network_multitest_configure_weights(
  ai_network* net_ctx, const ai_buffer* weights_buffer)
{
  AI_ASSERT(net_ctx &&  weights_buffer && weights_buffer->data)

  ai_ptr weights = AI_PTR(weights_buffer->data);
  AI_ASSERT( weights )

  {
    /* Updating weights (byte) offsets */
    dense_28_bias_array.format |= AI_FMT_FLAG_CONST;
    dense_28_bias_array.data = AI_PTR(weights + 11360);
    dense_28_bias_array.data_start = AI_PTR(weights + 11360);
  dense_28_weights_array.format |= AI_FMT_FLAG_CONST;
    dense_28_weights_array.data = AI_PTR(weights + 3520);
    dense_28_weights_array.data_start = AI_PTR(weights + 3520);
  dense_27_bias_array.format |= AI_FMT_FLAG_CONST;
    dense_27_bias_array.data = AI_PTR(weights + 3440);
    dense_27_bias_array.data_start = AI_PTR(weights + 3440);
  dense_27_weights_array.format |= AI_FMT_FLAG_CONST;
    dense_27_weights_array.data = AI_PTR(weights + 1840);
    dense_27_weights_array.data_start = AI_PTR(weights + 1840);
  dense_26_bias_array.format |= AI_FMT_FLAG_CONST;
    dense_26_bias_array.data = AI_PTR(weights + 1760);
    dense_26_bias_array.data_start = AI_PTR(weights + 1760);
  dense_26_weights_array.format |= AI_FMT_FLAG_CONST;
    dense_26_weights_array.data = AI_PTR(weights + 160);
    dense_26_weights_array.data_start = AI_PTR(weights + 160);
  dense_25_bias_array.format |= AI_FMT_FLAG_CONST;
    dense_25_bias_array.data = AI_PTR(weights + 80);
    dense_25_bias_array.data_start = AI_PTR(weights + 80);
  dense_25_weights_array.format |= AI_FMT_FLAG_CONST;
    dense_25_weights_array.data = AI_PTR(weights + 0);
    dense_25_weights_array.data_start = AI_PTR(weights + 0);
  
  }

  return true;
}


/**  PUBLIC APIs SECTION  *****************************************************/

AI_API_ENTRY
ai_bool ai_network_multitest_get_info(
  ai_handle network, ai_network_report* report)
{
  ai_network* net_ctx = AI_NETWORK_ACQUIRE_CTX(network);

  if ( report && net_ctx )
  {
    ai_network_report r = {
      .model_name        = AI_NETWORK_MULTITEST_MODEL_NAME,
      .model_signature   = AI_NETWORK_MULTITEST_MODEL_SIGNATURE,
      .model_datetime    = AI_TOOLS_DATE_TIME,
      
      .compile_datetime  = AI_TOOLS_COMPILE_TIME,
      
      .runtime_revision  = ai_platform_runtime_get_revision(),
      .runtime_version   = ai_platform_runtime_get_version(),

      .tool_revision     = AI_TOOLS_REVISION_ID,
      .tool_version      = {AI_TOOLS_VERSION_MAJOR, AI_TOOLS_VERSION_MINOR,
                            AI_TOOLS_VERSION_MICRO, 0x0},
      .tool_api_version  = {AI_TOOLS_API_VERSION_MAJOR, AI_TOOLS_API_VERSION_MINOR,
                            AI_TOOLS_API_VERSION_MICRO, 0x0},

      .api_version            = ai_platform_api_get_version(),
      .interface_api_version  = ai_platform_interface_api_get_version(),
      
      .n_macc            = 491910,
      .n_inputs          = 0,
      .inputs            = NULL,
      .n_outputs         = 0,
      .outputs           = NULL,
      .activations       = AI_STRUCT_INIT,
      .params            = AI_STRUCT_INIT,
      .n_nodes           = 0,
      .signature         = 0x0,
    };

    if ( !ai_platform_api_get_network_report(network, &r) ) return false;

    *report = r;
    return true;
  }

  return false;
}

AI_API_ENTRY
ai_error ai_network_multitest_get_error(ai_handle network)
{
  return ai_platform_network_get_error(network);
}

AI_API_ENTRY
ai_error ai_network_multitest_create(
  ai_handle* network, const ai_buffer* network_config)
{
  return ai_platform_network_create(
    network, network_config, 
    &AI_NET_OBJ_INSTANCE,
    AI_TOOLS_API_VERSION_MAJOR, AI_TOOLS_API_VERSION_MINOR, AI_TOOLS_API_VERSION_MICRO);
}

AI_API_ENTRY
ai_handle ai_network_multitest_destroy(ai_handle network)
{
  return ai_platform_network_destroy(network);
}

AI_API_ENTRY
ai_bool ai_network_multitest_init(
  ai_handle network, const ai_network_params* params)
{
  ai_network* net_ctx = ai_platform_network_init(network, params);
  if ( !net_ctx ) return false;

  ai_bool ok = true;
  ok &= network_multitest_configure_weights(net_ctx, &params->params);
  ok &= network_multitest_configure_activations(net_ctx, &params->activations);

  return ok;
}


AI_API_ENTRY
ai_i32 ai_network_multitest_run(
  ai_handle network, const ai_buffer* input, ai_buffer* output)
{
  return ai_platform_network_process(network, input, output);
}

AI_API_ENTRY
ai_i32 ai_network_multitest_forward(ai_handle network, const ai_buffer* input)
{
  return ai_platform_network_process(network, input, NULL);
}

#undef AI_NETWORK_MULTITEST_MODEL_SIGNATURE
#undef AI_NET_OBJ_INSTANCE
#undef AI_TOOLS_VERSION_MAJOR
#undef AI_TOOLS_VERSION_MINOR
#undef AI_TOOLS_VERSION_MICRO
#undef AI_TOOLS_API_VERSION_MAJOR
#undef AI_TOOLS_API_VERSION_MINOR
#undef AI_TOOLS_API_VERSION_MICRO
#undef AI_TOOLS_DATE_TIME
#undef AI_TOOLS_COMPILE_TIME

