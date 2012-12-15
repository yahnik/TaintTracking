#include <stdlib.h>
#include <stdio.h>
#include <time.h>

int doStuff(int a) {
    
    int c = (a+3)*(a);

    return c;
}


int main() {

    srand(time(NULL));
    int x;
    //x = rand()%20;
    x = 5;

    int w = doStuff(x);

    printf("Expected program return value = %d\n", w);
    return w;
}
