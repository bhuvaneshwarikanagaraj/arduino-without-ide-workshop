#include <avr/io.h>
#include <util/delay.h>

int main(void) {
    // Set pin 13 as an output
    DDRB |= (1 << DDB5);  // Arduino pin 13 is on PORTB5

    while (1) {
        // Turn LED on
        PORTB |= (1 << PORTB5);
        _delay_ms(1000);  // Wait for 1000 ms (1 second)

        // Turn LED off
        PORTB &= ~(1 << PORTB5);
        _delay_ms(1000);  // Wait for 1000 ms (1 second)
    }

    return 0;
}
