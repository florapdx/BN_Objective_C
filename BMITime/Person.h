//
//  Person.h
//  BMITime
//
//  Created by Flora Worley on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    // It has two instance variables
    float heightInMeters;
    int weightInKilos;
}

// You will be able to set those instance variables using these methods
/*- (float)heightInMeters;
- (void)setHeightInMeters: (float)h;
- (int)weightInKilos; 
- (void)setWeightInKilos: (int)w;*/

// Replace those with @property to declare setter and getter in one line each
@property float heightInMeters;
@property int weightInKilos;

// This method calculates the Body Mass Index
- (float)bodyMassIndex;

@end
