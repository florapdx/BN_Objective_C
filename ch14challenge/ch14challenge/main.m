//
//  main.m
//  ch14challenge
//
//  Created by Flora Worley on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *aboutmycomputer = [NSHost currentHost];
        NSLog(@"Hi %@", aboutmycomputer);
        
        NSString *mycomputerName = [aboutmycomputer localizedName];
        NSLog(@"The name of my computer is %@", mycomputerName);
        
        return 0;
        
        
    }
    return 0;
}

