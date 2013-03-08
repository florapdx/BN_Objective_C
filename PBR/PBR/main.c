//
//  main.c
//  PBR
//
//  Created by Flora Worley on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void cartesianToPolar(float x, float y, double *rPtr, double *thetaPtr)
{
    //is rPtr non-NULL?
    if(rPtr) {
    //store the radius in the supplied address
    *rPtr = sqrt(x * x + y * y);
    }
    
    //is thetaPtr NULL?
    if (!thetaPtr) {
        //skip the rest of the function
        return;
    }
    
    //calculate theta
    float theta;
    if(x == 0.0) {
        if (y == 0.0) {
            theta = 0.0; 
        } else if (y > 0) {
            theta = M_PI_2;
        } else {
            theta = -M_PI_2;
        }
    } else {
        theta = atan(y/x);
    }
    //store theta in the supplied address
    *thetaPtr = theta;

}

int main(int argc, const char * argv[])
{
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    fractionPart = modf(pi, &integerPart);
    
    printf("integerPart = %.0f, fractionPart = %.2f \n", integerPart, fractionPart);
    
    double x = 3.0;
    double y = 4.0;
    double radius;
    double angle;
    
    cartesianToPolar(x, y, &radius, &angle);
    printf("(%.2f, %.2f) becomes (%.2f radians, %.2f)\n", x, y, radius, angle);

    
    return 0;
}

