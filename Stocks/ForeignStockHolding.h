//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Flora Worley on 5/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
float conversionRate;

}
@property float conversionRate;

@end
