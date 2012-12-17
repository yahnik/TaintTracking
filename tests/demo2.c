#include <stdlib.h>
#include <stdio.h>

void numPrint(char* c) {
    
    printf("%s\n", c);
}


void run(char* c) {

    numPrint(c);
}


int main(int argc, char* argv[]) {

    if(argc <= 1)
        return -1;
    
    char* str = argv[1];
    run(str);

    return 0;
}
