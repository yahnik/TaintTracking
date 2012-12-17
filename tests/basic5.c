#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <math.h>

int main() {

    srand(time(NULL));
    int x = rand()%10;
    printf("x = %d\n", x); 
    if(x % 2)
        x = pow(x,2.0);
    else
        x++;

    return x;
}
