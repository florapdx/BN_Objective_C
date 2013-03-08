//
//  Asset.m
//  BMITime
//
//  Created by Flora Worley on 5/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, resaleValue, holder; //synthesize the accessors

- (NSString *)description //extend the description method to display the holder
{
    // Is holder non-nil?
    if ([self holder]) {
        
    return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", 
            [self label], [self resaleValue], [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",
                [self label], [self resaleValue]];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}
@end
