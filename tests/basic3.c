#include <stdlib.h>
#include <stdio.h>

int doStuff(int a, int b) {
    
    int c = (a+3)*(a);
    c += b;

    return c;
}


int main() {

    int x;
    fprintf(stdout,"Enter a value: ");
    fscanf(stdin, "%d", &x);
    
    int y = 5;

    if(x == 0) {
        return y;
    }    

    int w = doStuff(x,y);

    printf("W = %i\n", w);
    return w;
}
