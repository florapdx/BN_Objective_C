//
//  main.m
//  Ch26challenge
//
//  Created by Flora Worley on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *inventory = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *products;
        
        products = [NSMutableDictionary dictionary];
        [products setObject:@"legal pads" forKey:@"office products"];
        [products setObject:[NSNumber numberWithInt:100] forKey:@"stock"];
        [inventory addObject:products];

        products = [NSMutableDictionary dictionary];
        [products setObject:@"bic pens" forKey:@"office products"];
        [products setObject:[NSNumber numberWithInt:200] forKey:@"stock"];
        [inventory addObject:products];

        products = [NSMutableDictionary dictionary];
        [products setObject:@"scissors" forKey:@"office products"];
        [products setObject:[NSNumber numberWithInt:10] forKey:@"stock"];
        [inventory addObject:products];

        
        products = [NSMutableDictionary dictionary];
        [products setObject:@"glue" forKey:@"office products"];
        [products setObject:[NSNumber numberWithInt:40] forKey:@"stock"];
        [inventory addObject:products];

        products = [NSMutableDictionary dictionary];
        [products setObject:@"stapler" forKey:@"office products"];
        [products setObject:[NSNumber numberWithInt:10] forKey:@"stock"];
        [inventory addObject:products];

       // Write the contents to an external file 
        [inventory writeToFile:@"/tmp/inventory.plist" atomically:YES];
        
       // Read the contents of that file in
        NSArray *inventoryList = [NSArray arrayWithContentsOfFile:@"/tmp/inventory.plist"];
        
       // Read the number and type of product left in inventory; if 10 or less, remind to order more stock
        for (NSDictionary *d in inventoryList) {
            //NSLog(@"I have %@ units left of %@", [d objectForKey:@"stock"], [d objectForKey:@"office products"]);

        int number = [[d objectForKey:@"stock"] intValue];
            NSLog(@"There are %d units left of %@", number, [d objectForKey:@"office products"]);
            
            if(number < 11) {
             NSLog(@"You are almost out of %@ and need to order more", [d objectForKey:@"office products"]);
    }
           }                                                      
        
        

    }
    return 0;
}

