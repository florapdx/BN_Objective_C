//
//  Portfolio.m
//  Stocks
//
//  Created by Flora Worley on 5/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"


@implementation Portfolio 

// Methods for Portfolio challenge

-(void)addPortfolioStocksObject:(StockHolding *)s
{
    if(!portfolioStocks) {
        portfolioStocks = [[NSMutableArray alloc] init];
    }
    [portfolioStocks addObject:s];
}

-(float)valueOfPortfolio
{
    float sum = 0;
    for (StockHolding *s in portfolioStocks) {
        sum += [s valueInDollars];
    }
    return sum;
}


@end
