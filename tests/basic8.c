#include <stdio.h>
#include <string.h>
int main(int argc, char* argv[]) {

    char* c = "hello";
    
    if(argc > 1) {
        c = argv[1];
    }
    
    // Taint the return int with the argv input.
    int x = (int)c * 0 + 5;
    return x;
}
