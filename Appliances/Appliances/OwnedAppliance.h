//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Flora Worley on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Appliance.h"

@interface OwnedAppliance : Appliance
{
    NSMutableSet *ownerNames;
}

// The designated initializer
-(id)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n;

-(void)addOwnerNamesObject:(NSString *)n;
-(void)removeOwnerNamesObject:(NSString *)n;

@end
