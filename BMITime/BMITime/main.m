//
//  main.m
//  BMITime
//
//  Created by Flora Worley on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
    // Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
    // Create a dictionary of executives
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        
        for (int i = 0; i < 10; i++) {
            
            // Create an instance of Employee
            Employee *person = [[Employee alloc] init];
            
            // Give the instance variable values
            [person setWeightInKilos: 90 + i];
            [person setHeightInMeters: 1.8 - i/10.0];
            [person setEmployeeID: i];
            
            // Put the employee in the employees array
            [employees addObject:person];
            
            // Is this the first employee?
            if (i == 0) {
                [executives setObject:person forKey:@"CEO"];
            }
            
            // Is this the second employee
            if (i == 1) {
                [executives setObject:person forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        // Create 10 assets
        for (int i = 0; i < 10; i++) {
            
            // Creat an asset
            Asset *asset = [[Asset alloc] init];
            
            // Give it a label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel: currentLabel];
            [asset setResaleValue: i * 17];
            
            // Get a random number between 0 - 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // Find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAssetsObject:asset];
            
            [allAssets addObject:asset];
            
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey: @"valueOfAssets" ascending: YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey: @"employeeID" ascending: YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects: voa, ei, nil]];
         
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@", allAssets);
        
        NSLog(@"executives: %@", executives);
        executives = nil;
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat: @"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate: predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of array");
        
        allAssets = nil;
        employees = nil;
        
        
    /*// Create an instance of person
        Employee *person = [[Employee alloc] init];
        
        // Give the instance variables interesting values
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:15];
        
        // Call the bodyMassIndex method
        float bmi = [person bodyMassIndex];
        NSLog(@"Employee %d has a BMI of %f", [person employeeID], bmi);*/
        
        
    }
    sleep(100);
    return 0;
}

