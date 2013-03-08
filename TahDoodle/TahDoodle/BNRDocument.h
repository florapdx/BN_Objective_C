//
//  BNRDocument.h
//  TahDoodle
//
//  Created by Flora Worley on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument

{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
}
-(IBAction)createNewItem:(id)sender;
-(IBAction)deleteSelectedItem:(id)sender;

@end
