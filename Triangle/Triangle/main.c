//
//  main.c
//  Triangle
//
//  Created by Flora Worley on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

float remainingAngle (angleA, angleB) {
    float angleC = 180 - (angleA + angleB); 
    return angleC;
}

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The remaining angle is %.2f \n", angleC);
    return 0;
}

