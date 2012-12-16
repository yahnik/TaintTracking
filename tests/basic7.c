#include <stdio.h>
#include <string.h>
int main() {

    int x, y, z;
    fscanf(stdin, "%d%d%d", &x, &y, &z);

    y = 4;
    if(x % 2) {
        y = x;
    }
    else {
        y++;
    }
    
    return y;
}
