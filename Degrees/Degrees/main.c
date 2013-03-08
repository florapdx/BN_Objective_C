//
//  main.c
//  Degrees
//
//  Created by Flora Worley on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

// declare global variable
static float lastTemperature = 50.0;

float fahrenheitFromCelsius (float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32;
    printf("%f Celsius is %f Fahrenheit \n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit \n", freezeInF);
    printf("The last temperature converted was %f \n", lastTemperature);
    return 0;
}

