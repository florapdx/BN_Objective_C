//
//  CTGViewController.m
//  Calculator
//
//  Created by Flora Worley on 7/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CTGViewController.h"
#import "CTGBrain.h"

@interface CTGViewController ()
@property (nonatomic) BOOL userIsInTheMiddleOfEnteringANumber;
@property (nonatomic, strong) CTGBrain *brain;

@end

@implementation CTGViewController
@synthesize display;
@synthesize calculatorTracker;
@synthesize userIsInTheMiddleOfEnteringANumber;
@synthesize brain = _brain;

- (CTGBrain *)brain 
{
    if (!_brain) _brain = [[CTGBrain alloc] init];
    return _brain;
}

- (IBAction)digitPressed:(UIButton *)sender {
    NSString *digit = [sender currentTitle];
    if (self.userIsInTheMiddleOfEnteringANumber) {
        self.display.text = [self.display.text stringByAppendingString:digit];
    } else {
        self.display.text = digit;
        self.userIsInTheMiddleOfEnteringANumber = YES;
    }
    }

- (IBAction)decimalPressed:(UIButton *)sender {
    NSString *decimal = [sender currentTitle];
    if ([self.display.text rangeOfString:decimal].location == NSNotFound) {
    if (self.userIsInTheMiddleOfEnteringANumber) {
        self.display.text = [self.display.text stringByAppendingString:decimal]; 
    }} else {
        self.display.text = decimal;
        self.userIsInTheMiddleOfEnteringANumber = YES;
    }
}

- (IBAction)enterPressed {
    [self.brain pushOperand:[self.display.text doubleValue]];
    self.userIsInTheMiddleOfEnteringANumber = NO;
    self.calculatorTracker.text = [self.calculatorTracker.text stringByAppendingFormat:@"%@ ", self.display.text];
}

- (IBAction)operationPressed:(id)sender {
    NSString *operation = [sender currentTitle];
    
    if (self.userIsInTheMiddleOfEnteringANumber) {
        [self enterPressed];
    }
    double result = [self.brain performOperation:operation];
    self.display.text = [NSString stringWithFormat:@"%g", result];
    self.calculatorTracker.text = [self.calculatorTracker.text stringByAppendingFormat:@"%@ = %g  ", operation, result];
}

- (IBAction)clearPressed {
    if (self.display.text) {
        self.display.text = @"";
    }
    if (self.calculatorTracker.text) {
        self.calculatorTracker.text = @"";
    }
    [self.brain clearStack];
    self.display.text = @"0";
    self.userIsInTheMiddleOfEnteringANumber = NO;
}

- (IBAction)backPressed 
{
    if ([self.display.text length] > 0) {
        self.display.text = [self.display.text substringToIndex:[self.display.text length] -1];
    } else {
        self.display.text = @"0";
        self.userIsInTheMiddleOfEnteringANumber = NO;
    }
    
/* Attempt at trying to also address undoing the history label's text and skipping over the last operation/getting rid of the last number on the stack--couldn't figure out how to/whether it's possible to reverse last string appending-------
 
 int i = [self.calculatorTracker.text length];
     NSLog(@"length=%i", self.calculatorTracker.text.length);

    if (self.calculatorTracker.text == @"+" || @"-" || @"*" || @"/" || @"sin" || @"cos" || @"sqrt" || @"π") {
        self.calculatorTracker.text = @"";
    }
         
    if ([self.calculatorTracker.text length] > 0) {
        self.calculatorTracker.text = [self.calculatorTracker.text substringToIndex:[self.display.text length] - i];
    }
    
    if (!self.userIsInTheMiddleOfEnteringANumber) {
         [self.brain removeLastFromStack];
    }*/
                                       
}



@end
