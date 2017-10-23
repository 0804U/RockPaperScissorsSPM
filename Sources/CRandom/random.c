#include <stdlib.h>
#include <time.h>

int createRandomNumber(int max) {
    srand(time(0));
    int randomInt = rand() % max;
    return randomInt;
}