//
//  main.c
//  Coolness
//
//  Created by Flora Worley on 5/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i;
    for(i = 99; i>-1; i-=3) {
        if(i % 5 == 0) {
            continue;
        }
    printf("%d \n", i);
        if(i % 5 > 0) {
            continue;
        }
        printf("%d. Found one! \n", i);
        
    }
    return 0;
    
}

 