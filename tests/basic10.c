#include <stdlib.h>
#include <stdio.h>
#include <time.h>

int doStuff(int a) {return 2*a;}

int main() {
    srand(time(NULL));
    int x = rand();
    
    if (x % 2) {
        x = 1;
    }
    
    doStuff(x);

    return 0;
}
