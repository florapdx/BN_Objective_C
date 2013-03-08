//
//  Person.m
//  BMITime
//
//  Created by Flora Worley on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

// Code replaced by using @property and @synthesize 
/*- (float)heightInMeters
{
    return heightInMeters;
}

-(void)setHeightInMeters:(float)h   
{
    heightInMeters = h;
}

- (int)weightInKilos
{
    return weightInKilos;
}

-(void)setWeightInKilos:(int)w  
{
    weightInKilos = w;
}*/

-(float)bodyMassIndex
{
    // return weightInKilos / (heightInMeters * heightInMeters);
    // Use accessor methods and self instead; makes code longer, but more 'secure'
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
