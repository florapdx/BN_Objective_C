//
//  main.m
//  Groceries
//
//  Created by Flora Worley on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create grocery list objects
        NSString *milk = @"milk";
        NSString *eggs = @"eggs";
        NSString *bacon = @"bacon";
        NSString *sriracha = @"sriracha";
        NSString *peaches = @"peaches";
        
       // Create a new empty mutable array object
        NSMutableArray *groceryList = [NSMutableArray array];
        
        // Add items to the grocery list
        [groceryList addObject:milk];
        [groceryList addObject:eggs];
        [groceryList addObject:bacon];
        [groceryList addObject:sriracha];
        [groceryList addObject:peaches];
        
        for (NSString *s in groceryList) {
            NSLog(@"My grocery list is %@", s);
        }
        
    }
    return 0;
}

