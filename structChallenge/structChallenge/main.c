//
//  main.c
//  structChallenge
//
//  Created by Flora Worley on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <time.h>



struct tm;

int main(int argc, const char * argv[])
{
    
    long secondsSince1970 = time(NULL);
    printf("It's been %ld seconds since 1970\n", secondsSince1970);
    
    long inFourMillionSeconds = secondsSince1970 + 4000000;
    printf("In four million seconds it will have been %ld seconds since 1970\n", inFourMillionSeconds);
    
    struct tm now;
    localtime_r(&inFourMillionSeconds, &now); 
    printf("In four million seconds, the date will be %d:%d:%d\n", 1 + now.tm_mon, now.tm_mday, 1900 + now.tm_year);
    return 0;
}

