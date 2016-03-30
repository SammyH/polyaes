#ifndef __COMMS_H__
#define __COMMS_H__

#include <stdint.h>

#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/usart.h>

void readStringFromUART(char *buff, uint32_t buffLen);
void writeStringToUART (char *buff);

#endif /* __COMMS_H__ */