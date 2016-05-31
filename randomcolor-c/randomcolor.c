#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

char* randHexColor();

char map[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

int main()
{
    srand (time(NULL));
    printf("New color is #%s\n", randHexColor());
    return 0;
}

char* randHexColor(){
    char* color = malloc(sizeof(char) * 6);
    for(int i = 0; i < 6; i++){
        color[i] = map[rand() % 16];
    }
    return color;
}
