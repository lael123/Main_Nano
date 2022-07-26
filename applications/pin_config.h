/*
 * Copyright (c) 2006-2020, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-08-25     Rick       the first version
 */
#ifndef APPLICATIONS_PIN_CONFIG_H_
#define APPLICATIONS_PIN_CONFIG_H_

#include "stm32g0xx.h"

//OUTPUT
#define LED_GREEN_PORT          GPIOA
#define LED_GREEN_PIN           GPIO_PIN_6
#define LED_RED_PORT            GPIOA
#define LED_RED_PIN             GPIO_PIN_7
#define BUZZER_PORT             GPIOA
#define BUZZER_PIN              GPIO_PIN_12
#define VALVE_1_PORT            GPIOA
#define VALVE_1_PIN             GPIO_PIN_8
#define VALVE_2_PORT            GPIOA
#define VALVE_2_PIN             GPIO_PIN_11
//INPUT
#define HALL_1_PORT             GPIOA
#define HALL_1_PIN              GPIO_PIN_4
#define HALL_2_PORT             GPIOA
#define HALL_2_PIN              GPIO_PIN_5
#define KEY_PORT                GPIOA
#define KEY_ON_PIN              GPIO_PIN_0
#define KEY_OFF_PIN             GPIO_PIN_1
#define WATER_LOS_PORT          GPIOA
#define WATER_LOS_PIN           GPIO_PIN_2
#define WATER_LEAK_PORT         GPIOA
#define WATER_LEAK_PIN          GPIO_PIN_3

#endif /* APPLICATIONS_PIN_CONFIG_H_ */
