// Set up the system clock, UART clock and GPIO
#include "setup.h"

void clockSetup(void)
{
	rcc_periph_clock_enable(RCC_GPIOD);
	rcc_periph_clock_enable(RCC_GPIOA);
	rcc_periph_clock_enable(RCC_USART2);
}

void usartSetup(void)
{
	/* USART2 parameters. */
	usart_set_baudrate		(USART2, 115200);
	usart_set_databits		(USART2, 8);
	usart_set_stopbits		(USART2, USART_STOPBITS_1);
	usart_set_mode				(USART2, USART_MODE_TX_RX);
	usart_set_parity			(USART2, USART_PARITY_NONE);
	usart_set_flow_control(USART2, USART_FLOWCONTROL_NONE);
	usart_enable					(USART2);
}

void gpioSetup(void)
{
	/* Setup GPIO pin GPIO12 on GPIO port D for LED. */
	gpio_mode_setup(GPIOD, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, GPIO12 | GPIO1);

	/* Setup GPIO pins for USART2 transmit & receive . */
	gpio_set_output_options(GPIOA, GPIO_OTYPE_OD, GPIO_OSPEED_25MHZ, GPIO3);
	gpio_mode_setup(GPIOA, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO2 | GPIO3);

	/* Setup USART2 TX pin as alternate function. */
	gpio_set_af(GPIOA, GPIO_AF7, GPIO2 | GPIO3);
}
