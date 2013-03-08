//
//  main.m
//  ImageFetch
//
//  Created by Flora Worley on 5/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSURL *url = [NSURL URLWithString:@"http://imgc.classistatic.com/cps/poc/120508/111r1/84794nc_27.jpeg"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        
        if(!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return 1;
        }
        NSLog(@"The file has %lu bytes", [data length]);
        
            
        BOOL written = [data writeToFile:@"/tmp/broadwaybldg.jpeg" options:NSDataWritingAtomic error:&error];
            
        if(!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
                return 1;
            }
            NSLog(@"success!");
           
        
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/broadwaybldg.jpeg"];
        NSLog(@"The file read from the disk has %lu bytes", [readData length]);
        
        
        

        
    }
    return 0;
}

