//
//  main.c
//  TwoFloats
//
//  Created by Flora Worley on 4/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
// first float named first
    float first = 3.14;
    
// second float named second
    float second = 42.0;
    
// another variable of type double named sumFloat
    double sumFloat = first + second;
    
// print the sum
    printf("The sum of first and second is %f. \n", sumFloat);
    
    return 0;
}

