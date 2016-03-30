#include "comms.h"

void readStringFromUART(char *buff, uint32_t buffSize) {

  char     chr; //character received
  uint32_t idx; //index

  idx = 0;
  chr = 0;

  while ( (0x0D != chr) && (0x0A != chr) && (idx < buffSize) )
  {
      // read a character in
      chr = (char) usart_recv_blocking(USART2) & 0xFF;

      // indicate an character has been read
      gpio_toggle(GPIOD, GPIO12);

      // echo the character back out
      usart_send_blocking(USART2, chr);

  		// store the character in the buffer
      buff[idx++] = chr;
  }

  // turn off the LED again
  gpio_clear(GPIOD, GPIO12);

  // pop off the EOL characters
  if (0x0D == chr || 0x0A == chr) {
      idx--;
  }

  // terminate the string
  buff[idx] = 0x00;

}

void writeStringToUART(char *buff) {

	// write out until end of string (0x00)
  while (*buff)
  {
  	// send the character
    usart_send_blocking(USART2, *buff++);

    // flash the LED
    gpio_toggle(GPIOD, GPIO12);
  }

  // turn off the LED before finishing
  gpio_clear(GPIOD, GPIO12);

}