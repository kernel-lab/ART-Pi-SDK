/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    gpio.c
  * @brief   This file provides code for the configuration
  *          of all used GPIO pins.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "gpio.h"

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/*----------------------------------------------------------------------------*/
/* Configure GPIO                                                             */
/*----------------------------------------------------------------------------*/
/* USER CODE BEGIN 1 */
#define LED_NUM   (2)

typedef struct Led_Config_Type {
  GPIO_TypeDef * port;
  uint16_t pin;
} led_config_t;

static const led_config_t led_config[LED_NUM] = {
  {LED_RED_GPIO_Port,  LED_RED_Pin },
  {LED_BLUE_GPIO_Port, LED_BLUE_Pin},
};

/* USER CODE END 1 */

/** Configure pins
     PH1-OSC_OUT (PH1)   ------> RCC_OSC_OUT
     PH0-OSC_IN (PH0)   ------> RCC_OSC_IN
*/
void MX_GPIO_Init(void)
{

  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOI_CLK_ENABLE();
  __HAL_RCC_GPIOG_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LED_RED_GPIO_Port, LED_RED_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LED_BLUE_GPIO_Port, LED_BLUE_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin : PtPin */
  GPIO_InitStruct.Pin = LED_RED_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LED_RED_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : PtPin */
  GPIO_InitStruct.Pin = LED_BLUE_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LED_BLUE_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 2 */
/**
 * @brief led blink driver
 * @param led_num -> LED_RED or LED_BLUE
 *        times -> led blink times
 * @retval none
*/
void Led_Blink(led_number_t led_num, uint16_t times)
{
  if (led_num >= LED_COUNT)
    return;

  for (uint16_t i = 0; i < times; i++) {
    HAL_Delay(50);
    HAL_GPIO_TogglePin(led_config[led_num].port, led_config[led_num].pin);
    HAL_Delay(50);
    HAL_GPIO_TogglePin(led_config[led_num].port, led_config[led_num].pin);
  }
}

/* USER CODE END 2 */
