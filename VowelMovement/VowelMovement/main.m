//
//  main.m
//  VowelMovement
//
//  Created by Flora Worley on 6/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

//typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
// Create an array of strings to devowelize and a container for new ones
        NSArray *oldStrings = [NSArray arrayWithObjects:@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi", nil];
        NSLog(@"old strings: %@", oldStrings);
        NSMutableArray *newStrings = [NSMutableArray array];
        
        // Create a list of characters that we'll move from the string 
        NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
        
        // Declare the block variable
        //ArrayEnumerationBlock devowelizer;
            
        
        // Iterate over the array with our block
        [oldStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop)
         {
             NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
             
             // Did I find a y?
             if (yRange.location != NSNotFound) {
                 *stop = YES; // Prevent further iterations
                 return; // Stop this iteration
             }
             
             NSMutableString *newString = [NSMutableString stringWithString:string];
             
             // Iterate over the array of vowels, replacing occurrences of each with an empty string
             for (NSString *s in vowels) {
                 NSRange fullRange = NSMakeRange(0, [newString length]);
                 [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
             }
             [newStrings addObject:newString];
         // End of block assignment
         }];
        NSLog(@"new strings: %@", newStrings); 
    }
    return 0;
}

// Altered to change block back from variable-accessed to non-use of block variable