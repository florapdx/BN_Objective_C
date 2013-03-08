//
//  main.m
//  Stringz
//
//  Created by Flora Worley on 5/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //** Code below is for reading files with NSString
        NSError *error = nil;
        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf" encoding:NSASCIIStringEncoding error:&error];
        
        if(!str) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"resolv.conf looks like this: %@", str);
        }
        
        
        
        /*
        //** Code below is for writing an NSString to a file and using NSError
        
        NSMutableString *str = [[NSMutableString alloc] init];
        for(int i = 0; i < 10; i++) {
            [str appendString:@"Flora is cool!\n"];
        }
        
        // Declare a pointer to an NSError object, but don't instantiate it
        // The NSError instance will only be created if there is, in fact, an error.
        
        NSError *error = nil;
        
        // Pass the NSError pointer by reference to the NSString method
        BOOL success = [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
        // Test the returned BOOL, and query the NSError if the write failed
        if(success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }*/
        
           }
    return 0;
}

