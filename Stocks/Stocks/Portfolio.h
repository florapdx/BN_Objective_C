//
//  Portfolio.h
//  Stocks
//
//  Created by Flora Worley on 5/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StockHolding;

@interface Portfolio : NSObject
{
    NSMutableArray *portfolioStocks;
}

- (void)addPortfolioStocksObject: (StockHolding *)s;
- (float)valueOfPortfolio;


@end
