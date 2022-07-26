/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-07-26     Rick       the first version
 */
#include "rtthread.h"
#include "pin_config.h"

rt_timer_t Moto1_Timer_Act,Moto2_Timer_Act = RT_NULL;
rt_timer_t Moto1_Timer_Detect,Moto2_Timer_Detect = RT_NULL;

uint8_t Turn1_Flag;
uint8_t Turn2_Flag;

uint8_t ValvePastStatus;
uint8_t ValveNowStatus;

uint8_t Moto1_Fail_FLag;
uint8_t Moto2_Fail_FLag;

uint8_t Valve_Alarm_Flag;

void valve_init(void)
{
    GPIO_InitTypeDef  gpio_init_structure = {0};
    __HAL_RCC_GPIOA_CLK_ENABLE();
    /* Configure the Radio Switch pin */
    gpio_init_structure.Pin   = VALVE_1_PIN|VALVE_2_PIN;
    gpio_init_structure.Mode  = GPIO_MODE_OUTPUT_PP;
    gpio_init_structure.Pull  = GPIO_NOPULL;
    gpio_init_structure.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    HAL_GPIO_Init(GPIOA, &gpio_init_structure);
}
void valve_open(void)
{
    led_valve_open();
    ValvePastStatus = ValveNowStatus;
    ValveNowStatus = 1;
    HAL_GPIO_WritePin(GPIOA,VALVE_1_PIN|VALVE_2_PIN,1);
}
void valve_close(void)
{
    led_valve_close();
    ValvePastStatus = ValveNowStatus;
    ValveNowStatus = 0;
    HAL_GPIO_WritePin(GPIOA,VALVE_1_PIN|VALVE_2_PIN,0);
}
void Turn1_Edge_Callback(void)
{
    Turn1_Flag ++;
}
void Turn2_Edge_Callback(void)
{
    Turn2_Flag ++;
}
uint8_t Get_Moto1_Fail_FLag(void)
{
    return Moto1_Fail_FLag;
}
uint8_t Get_Moto2_Fail_FLag(void)
{
    return Moto2_Fail_FLag;
}
void Turn1_Timer_Callback(void)
{
    Key_IO_Init();
    WaterScan_IO_Init();
    HAL_GPIO_WritePin(GPIOA,VALVE_1_PIN,1);
    if(Turn1_Flag<2)
    {
        if(!Moto2_Fail_FLag)
        {
            led_valve_alarm();
            Valve_Alarm_Flag = 1;
        }
        Moto1_Fail_FLag = 1;
    }
    else
    {
        if(!Moto2_Fail_FLag)
        {
            led_valve_resume();
            Valve_Alarm_Flag = 0;
        }
        Moto1_Fail_FLag = 0;
    }
}
void Turn2_Timer_Callback(void)
{
    Key_IO_Init();
    WaterScan_IO_Init();
    HAL_GPIO_WritePin(GPIOA,VALVE_2_PIN,1);
    if(Turn2_Flag<2)
    {
        led_valve_alarm();
        Moto2_Fail_FLag = 1;
        Valve_Alarm_Flag = 1;
    }
    else
    {
        led_valve_resume();
        Moto2_Fail_FLag = 0;
        Valve_Alarm_Flag = 0;
    }
}
void EXTI4_15_IRQHandler(void)
{
  /* USER CODE BEGIN EXTI4_15_IRQn 0 */

  /* USER CODE END EXTI4_15_IRQn 0 */
  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_4);
  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_5);
  /* USER CODE BEGIN EXTI4_15_IRQn 1 */

  /* USER CODE END EXTI4_15_IRQn 1 */
}
void HAL_GPIO_EXTI_Falling_Callback(uint16_t GPIO_Pin)
{
    switch(GPIO_Pin)
    {
    case GPIO_PIN_4:
        Turn1_Edge_Callback();
        break;
    case GPIO_PIN_5:
        Turn2_Edge_Callback();
        break;
    default:break;
    }
}
void Moto1_Timer_Act_Callback(void *parameter)
{
    HAL_GPIO_WritePin(GPIOA,VALVE_1_PIN,1);
    rt_timer_start(Moto1_Timer_Detect);
}
void Moto2_Timer_Act_Callback(void *parameter)
{
    HAL_GPIO_WritePin(GPIOA,VALVE_2_PIN,1);
    rt_timer_start(Moto2_Timer_Detect);
}
void Moto_Init(void)
{
    valve_init();

    GPIO_InitTypeDef GPIO_InitStruct = {0};

    /* GPIO Ports Clock Enable */
    __HAL_RCC_GPIOB_CLK_ENABLE();
    __HAL_RCC_GPIOA_CLK_ENABLE();

    /*Configure GPIO pins : PA4 PA5 */
    GPIO_InitStruct.Pin = GPIO_PIN_4|GPIO_PIN_5;
    GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING_FALLING;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    /* EXTI interrupt init*/
    HAL_NVIC_SetPriority(EXTI4_15_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(EXTI4_15_IRQn);

    Moto1_Timer_Act = rt_timer_create("Moto1_Timer_Act", Moto1_Timer_Act_Callback, RT_NULL, 5100, RT_TIMER_FLAG_ONE_SHOT|RT_TIMER_FLAG_SOFT_TIMER);
    Moto2_Timer_Act = rt_timer_create("Moto2_Timer_Act", Moto2_Timer_Act_Callback, RT_NULL, 5000, RT_TIMER_FLAG_ONE_SHOT|RT_TIMER_FLAG_SOFT_TIMER);
    Moto1_Timer_Detect = rt_timer_create("Moto1_Timer_Detect", Turn1_Timer_Callback, RT_NULL, 3000, RT_TIMER_FLAG_ONE_SHOT|RT_TIMER_FLAG_SOFT_TIMER);
    Moto2_Timer_Detect = rt_timer_create("Moto2_Timer_Detect", Turn2_Timer_Callback, RT_NULL, 3000, RT_TIMER_FLAG_ONE_SHOT|RT_TIMER_FLAG_SOFT_TIMER);

    valve_open();
    button_press();
}
void Moto_Detect(void)
{
    uint8_t ValveFuncFlag = ValveNowStatus;
    if(ValveFuncFlag==1)
    {
        Turn1_Flag = 0;
        Turn2_Flag = 0;
        Moto1_Fail_FLag = 0;
        Moto2_Fail_FLag = 0;
        if(HAL_GPIO_ReadPin(GPIOA,HALL_1_PIN))
        {
            Key_IO_DeInit();
            WaterScan_IO_DeInit();
            HAL_GPIO_WritePin(GPIOA,VALVE_1_PIN,0);
            rt_timer_start(Moto1_Timer_Act);
        }
        if(HAL_GPIO_ReadPin(GPIOA,HALL_2_PIN))
        {
            Key_IO_DeInit();
            WaterScan_IO_DeInit();
            HAL_GPIO_WritePin(GPIOA,VALVE_2_PIN,0);
            rt_timer_start(Moto2_Timer_Act);
        }
    }
}
