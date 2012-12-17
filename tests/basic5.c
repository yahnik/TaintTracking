#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <math.h>

int doStuff(int x) { return x;}

int main() {

    srand(time(NULL));
    int x = rand();
    
    if(x % 2)
        x = doStuff(x);
    else
        x++;

    return x;
}
