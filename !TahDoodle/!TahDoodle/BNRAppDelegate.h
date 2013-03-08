//
//  BNRAppDelegate.h
//  !TahDoodle
//
//  Created by Flora Worley on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

//declare the helper function that will use to get a path to the location on disk where we can save the to-do list
NSString *docPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *insertButton;
    UIButton *clearAll;
  
    
    NSMutableArray *tasks;
}

-(void)addTask:(id)sender;
-(void)removeTasks:(id)sender;

@property (strong, nonatomic) UIWindow *window;

@end
