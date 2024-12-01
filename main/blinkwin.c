#define F_CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>

int main(void) {
    DDRB |= (1 << PB5);  // Set PB5 (Arduino Uno LED) as output

    while (1) {
        PORTB ^= (1 << PB5);  // Toggle PB5
        _delay_ms(500);     }
}