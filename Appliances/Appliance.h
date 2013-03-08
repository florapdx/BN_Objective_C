//
//  Appliance.h
//  Appliances
//
//  Created by Flora Worley on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject
{
    NSString *productName;
    int voltage;
}
//@property (copy) NSString *productName;
@property int voltage;

// The designated initializer
- (id)initWithProductName:(NSString *)pn;

@end
