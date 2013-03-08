//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Flora Worley on 5/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

-(float)costInDollars
{
    float localCost = [super costInDollars];
    return localCost * conversionRate;
}

-(float)valueInDollars
{
    float localValue = [super valueInDollars];
    return localValue * conversionRate;
}


@end