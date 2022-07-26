#include <agile_led.h>
#include "led.h"
#include "pin_config.h"

static agile_led_t *led_green = RT_NULL;
static agile_led_t *led_red = RT_NULL;
static agile_led_t *beep = RT_NULL;
static agile_led_t *press_beep = RT_NULL;
static agile_led_t *press_red = RT_NULL;
static agile_led_t *in_alarm_press_red = RT_NULL;
static agile_led_t *in_alarm_press_beep = RT_NULL;
static agile_led_t *lost_red = RT_NULL;
static agile_led_t *lost_beep = RT_NULL;
void led_Init(void)
{
    if(led_green == RT_NULL)
    {
        led_green = agile_led_create(LED_GREEN_PORT,LED_GREEN_PIN, 0, "200,0", -1);
    }
    if(led_red == RT_NULL)
    {
        led_red = agile_led_create(LED_RED_PORT,LED_RED_PIN, 0, "200,200", -1);
        press_red = agile_led_create(LED_RED_PORT,LED_RED_PIN, 0, "200,1", 1);
        in_alarm_press_red = agile_led_create(LED_RED_PORT,LED_RED_PIN, 0, "200,200,200,200,200,1", 1);
        lost_red = agile_led_create(LED_RED_PORT,LED_RED_PIN, 0, "200,200,200,5000", -1);
    }
    if(beep == RT_NULL)
    {
        beep = agile_led_create(BUZZER_PORT,BUZZER_PIN, 1, "200,200", -1);
        press_beep = agile_led_create(BUZZER_PORT,BUZZER_PIN, 1, "200,1", 1);
        in_alarm_press_beep = agile_led_create(BUZZER_PORT,BUZZER_PIN, 1, "200,200,200,200,200,1", 1);
        lost_beep = agile_led_create(BUZZER_PORT,BUZZER_PIN, 1, "200,200,200,5000", -1);
    }
}
void button_press(void)
{
    agile_led_start(press_beep);
}
void in_alarm_press(void)
{
    agile_led_start(in_alarm_press_red);
    agile_led_start(in_alarm_press_beep);
}
void in_alarm_press_calcel_sound(void)
{
    agile_led_stop(beep);
}
void led_valve_open(void)
{
    agile_led_start(led_green);
}
void led_valve_close(void)
{
    agile_led_stop(led_green);
    agile_led_start(press_red);
}
void led_water_alarm(void)
{
    agile_led_set_light_mode(led_red,"200,200,200,200,200,5000", -1);
    agile_led_set_light_mode(beep,"200,200,200,200,200,5000", -1);
    agile_led_stop(led_green);
    agile_led_start(led_red);
    agile_led_start(beep);
}
void led_water_resume(void)
{
    agile_led_stop(led_red);
    agile_led_stop(beep);
}
void led_lost_alarm(void)
{
    agile_led_start(lost_red);
    agile_led_start(lost_beep);
}
void led_lost_resume(void)
{
    agile_led_stop(lost_red);
    agile_led_stop(lost_beep);
}
void led_valve_alarm(void)
{
    agile_led_set_light_mode(led_red,"200,200,200,200,200,200,200,200,200,200,200,5000", -1);
    agile_led_set_light_mode(beep,"200,200,200,200,200,200,200,200,200,200,200,5000", -1);
    agile_led_start(led_red);
    agile_led_start(beep);
}
void led_valve_resume(void)
{
    agile_led_stop(led_red);
    agile_led_stop(beep);
}
