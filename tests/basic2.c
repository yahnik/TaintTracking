#include <stdlib.h>
#include <stdio.h>
 
int main() {

    int x;
    x = random() % 20;
    fprintf(stdout, "Random number is: %d\n", x);

    if(x % 2) {
        fprintf(stdout, "Random number is odd.\n");
    }
    else {
        fprintf(stdout, "Random number is even.\n");
    }

    
    return x*8;
}
