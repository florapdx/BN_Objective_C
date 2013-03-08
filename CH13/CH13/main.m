//
//  main.m
//  CH13
//
//  Created by Flora Worley on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
            @autoreleasepool {
                
                /*NSDate *now = [[NSDate alloc] init];
                NSLog(@"The date is %@", now);
                
                double seconds = [now timeIntervalSince1970];
                NSLog(@"It has been %f seconds since the start of 1970.", seconds);
            
                NSDate *later = [now dateByAddingTimeInterval:100000];
                NSLog(@"In 100000 seconds it will be %@", later); 
                
                NSCalendar *cal = [NSCalendar currentCalendar];
                NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:now];
                NSLog(@"This is day %lu of the month", day); */
                
                NSTimeZone *currentTimezoneAtMyComputer = [NSTimeZone systemTimeZone];
                NSLog(@"My time zone is %@", currentTimezoneAtMyComputer);
                
                BOOL daylightYesNo = [currentTimezoneAtMyComputer isDaylightSavingTime];
                if (daylightYesNo == 1) {
                    NSLog(@"It is currently daylight saving time");
                } else {
                    NSLog(@"It is not currently daylight saving time");
            }
    
            return 0;
        }

        
}