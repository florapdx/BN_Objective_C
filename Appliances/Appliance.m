//
//  Appliance.m
//  Appliances
//
//  Created by Flora Worley on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize voltage;

-(id)init
{
    return [self initWithProductName:@"Unknown"];
}

- (id)initWithProductName:(NSString *)pn
{
    // Call the NSObject's init method
    self = [super init];
    
    if (self) {// Give voltage a starting value
        
        productName = [pn copy];
        
        [self setVoltage:120];
    }
    
    // Return a pointer to the new object
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", productName, voltage];
}

-(void)setVoltage:(int)x
{
    NSLog(@"setting voltage to %d", x);
    voltage = x;
}

@end
