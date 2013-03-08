//
//  StockHolding.m
//  Stocks
//
//  Created by Flora Worley on 5/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StockHolding.h"
#import "Portfolio.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

// two other instance methods
-(float)costInDollars
{
    float p = [self purchaseSharePrice];
    return [self numberOfShares] * p;
}
-(float)valueInDollars
{
    float c = [self currentSharePrice];
    return [self numberOfShares] * c;
}



@end



