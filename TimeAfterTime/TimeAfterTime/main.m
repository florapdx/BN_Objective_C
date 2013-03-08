//
//  main.m
//  TimeAfterTime
//
//  Created by Flora Worley on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        /*NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100000 seconds it will be %@", later); */
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear: 1978];
        [comps setMonth: 4];
        [comps setDay: 15];
        [comps setHour: 12];
        [comps setMinute: 0];
        [comps setSecond: 0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier: NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents: comps];
        NSLog(@"My date of birth is %@", dateOfBirth);
        
        double d = [now timeIntervalSinceDate: dateOfBirth];
        NSLog(@"You have been alive for %f seconds", d);
        
    }
    return 0;
}

