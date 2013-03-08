//
//  StockHolding.h
//  Stocks
//
//  Created by Flora Worley on 5/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Portfolio;

@interface StockHolding : NSObject
{
    // This will have three instance variables
    
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
    
    NSMutableArray *portfolio;
}
// accessor methods in .h
@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

-(float)costInDollars; //purchaseSharePrice * numberOfShares
-(float)valueInDollars; //currentSharePrice * numberOfShares



@end
