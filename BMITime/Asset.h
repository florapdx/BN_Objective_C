//
//  Asset.h
//  BMITime
//
//  Created by Flora Worley on 5/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
    NSString *label;
    __weak Employee *holder; // pointer instance variable to hold onto the holding employee
    unsigned int resaleValue;
    
}

@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;
@end
