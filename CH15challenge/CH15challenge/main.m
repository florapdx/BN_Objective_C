//
//  main.m
//  CH15challenge
//
//  Created by Flora Worley on 5/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
        
        //
        //  main.m
        //  28NamesAndRegularWords
        //
        //  Created by Hector Sanchez on 10/18/11.
        //  Copyright 2011 __Heimlich Counter-Maneuver__. All rights reserved.
        //
        
#import <Foundation/Foundation.h>


        int main (int argc, const char * argv[])
        {
            @autoreleasepool {
                
                
        
                // Read in a file as a huge string (ignoring the possibility of an error)
        NSString *nameAndWordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
                
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        
        // Break it into an array of strings
        NSArray *namesAndWords = [nameAndWordString componentsSeparatedByString:@"\n"];  
        NSArray *namesOnly = [nameString componentsSeparatedByString:@"\n"];  
        NSMutableArray *hits = [[NSMutableArray alloc] initWithCapacity:250000];        
               
        NSUInteger nameCount = namesOnly.count;
        NSUInteger listCount = [namesAndWords count];
                
        NSUInteger i;
        NSUInteger h;   
          
        for(i=0; i<listCount; i++){
           
            
            NSString *wordString = [namesAndWords objectAtIndex:i];

            
            for(h=0; h<nameCount; h++){
                NSString *properNameString = [namesOnly objectAtIndex:h];
                NSString *properLowercase = [properNameString lowercaseString];
                if([wordString compare:properLowercase] == NSOrderedSame){
                    //NSLog(@"%@ is the same as %@", wordString, properNameString);
                    [hits addObject:wordString];
                    break;
                    
                }
            }
            
        }
                
                NSLog(@"hits length = %lu", hits.count);        
                
                
                // count off every other string and create new array for each (even and odd)
                
                //I think that I need to use NSIndexSet instead of trying to create a new array for each, though I need to look up how to do this....Need to read the documentation for each of these classes and methods to see what I am doing wrong...

                
                
              
    }
    return 0;
        
}
        