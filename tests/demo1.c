#include <stdlib.h>
#include <stdio.h>

int doStuff(int a, int b) {
    
    int c = (a+3)*(a);
    c += b;

    return c;
}


int main() {

    int x;
    fscanf(stdin, "%d", &x);

    int w = 5;

    if(x % 2) {
        w = doStuff(x,3);
    }    

    return w;
}
