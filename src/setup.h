#ifndef __SETUP_H__
#define __SETUP_H__

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/usart.h>

void clockSetup(void);
void usartSetup(void);
void gpioSetup(void);

#endif /* __SETUP_H__ */