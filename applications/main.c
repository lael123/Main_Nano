/*
 * Copyright (c) 2006-2022, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-07-26     RT-Thread    first version
 */

#include <rtthread.h>
#include "key.h"
#include "led.h"

int main(void)
{
    button_Init();
    led_Init();
    WaterScan_Init();
    Moto_Init();
    RTC_Init();
    Watchdog_Init();
    while (1)
    {
        Watchdog_Refresh();
        rt_thread_mdelay(1000);
    }

    return RT_EOK;
}
