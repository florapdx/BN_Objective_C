//
//  Employee.h
//  BMITime
//
//  Created by Flora Worley on 5/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableSet *assets;
}
@property int employeeID;
- (void)addAssetsObject: (Asset *)a;
- (unsigned int)valueOfAssets; 


@end
