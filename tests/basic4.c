#include <stdlib.h>
#include <stdio.h>
#include <time.h>


int main() {

    srand(time(NULL));
    int x = rand();
    
    if(x % 2) {
        fprintf(stdout,"Calling rand()...\n"); 
        x = rand() % 20;
    }
    else {
        x = 4;
        return x;
    }

    fprintf(stdout, "Expected return => %d\n", x*8);
    return x*8;
}
