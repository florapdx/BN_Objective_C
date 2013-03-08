//
//  main.m
//  Stocks
//
//  Created by Flora Worley on 5/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool { 
        // Create three instances of StockHolding
        StockHolding *stockZero = [[StockHolding alloc] init];
        StockHolding *stockOne = [[StockHolding alloc] init];
        StockHolding *stockTwo = [[StockHolding alloc] init];
        ForeignStockHolding *stockThree = [[ForeignStockHolding alloc] init];
        ForeignStockHolding *stockFour = [[ForeignStockHolding alloc] init];
        ForeignStockHolding *stockFive = [[ForeignStockHolding alloc] init];
        
        
                                   
        // Give the instance variables values
        [stockZero setPurchaseSharePrice: 2.30];
        [stockZero setCurrentSharePrice: 4.50];
        [stockZero setNumberOfShares: 40];
                                   
        [stockOne setPurchaseSharePrice: 12.19];
        [stockOne setCurrentSharePrice: 10.56];
        [stockOne setNumberOfShares: 90];
                                   
        [stockTwo setPurchaseSharePrice: 45.10];
        [stockTwo setCurrentSharePrice: 49.51];
        [stockTwo setNumberOfShares: 210];
        
        [stockThree setPurchaseSharePrice: 20.0];
        [stockThree setCurrentSharePrice: 30.0];
        [stockThree setNumberOfShares: 100];
        [stockThree setConversionRate: 1.5];
        
        [stockFour setPurchaseSharePrice: 20.0];
        [stockFour setCurrentSharePrice: 40.0];
        [stockFour setNumberOfShares: 100];
        [stockFour setConversionRate: 2.0];
        
        [stockFive setPurchaseSharePrice: 20.0];
        [stockFive setCurrentSharePrice: 10.0];
        [stockFive setNumberOfShares: 100];
        [stockFive setConversionRate: 0.5];
                                   

        // Creat a new array and fill it with values 
        NSMutableArray *allStocks = [NSMutableArray array];

        
        [allStocks addObject: stockZero];
        [allStocks addObject: stockOne];
        [allStocks addObject: stockTwo];
        [allStocks addObject: stockThree];
        [allStocks addObject: stockFour];
        [allStocks addObject: stockFive];
        
        int i;
        int arrayLength = allStocks.count;
        float totalHoldings = 0;
        
        for(i=0; i<arrayLength; i++){
            StockHolding *totalCollection = [allStocks objectAtIndex:i];
            totalHoldings += totalCollection.valueInDollars;
        }
        
       /* NSLog(@"the total is %f", totalHoldings);
        
                    float cidZ = [stockZero costInDollars];
                    float vidZ = [stockZero valueInDollars];
        NSLog(@"The value of my stockZero stock has increased by %f dollars", (vidZ - cidZ));
                    float cidO = [stockOne costInDollars];
                    float vidO = [stockOne valueInDollars];
        NSLog(@"The value of my stockOne stock has increased by %f dollars", (vidO - cidO));
                    float cidT = [stockTwo costInDollars];
                    float vidT = [stockTwo valueInDollars];
        NSLog(@"The value of my stockTwo stock has increased by %f  dollars", (vidT - cidT));
                    float cidTh = [stockThree costInDollars];
                    float vidTh = [stockThree valueInDollars];
        NSLog(@"The value of my stockThree stock has increased by %f  dollars", (vidTh - cidTh));
                    float cidF = [stockFour costInDollars];
                    float vidF = [stockFour valueInDollars];
        NSLog(@"The value of my stockFour stock has increased by %f  dollars", (vidF - cidF));
                    float cidFi = [stockFive costInDollars];
                    float vidFi = [stockFive valueInDollars];
        NSLog(@"The value of my stockFive stock has increased by %f  dollars", (vidFi - cidFi)); */

        
        // Can't get the "s" variable to work on its own--have to type in unique stock ID to add it to the array, which shouldn't be the case....look into further; need to change he setup of arrays above--review chapter 19 pp 120-21
    
        Portfolio *portfolio = [[Portfolio alloc] init];
        [portfolio addPortfolioStocksObject: stockOne];
        NSLog(@"Portfolio value: %f", [portfolio valueOfPortfolio]);
        
    }
    return 0;
}

