//
//  CTGBrain.m
//  Calculator
//
//  Created by Flora Worley on 7/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CTGBrain.h"

@interface CTGBrain()
@property (nonatomic, strong) NSMutableArray *programStack;
@end

@implementation CTGBrain

@synthesize programStack = _programStack;

-(NSMutableArray *)programStack
{
    if(_programStack == nil) { 
        _programStack = [[NSMutableArray alloc] init];
    }
    return _programStack;
}

-(id)program
{
    return [self.programStack copy];
}

+(NSString *)descriptionOfProgram:(id)program
{
    return @"This is your homework";
    //this method calls the helper method and returns that. The helper method
    //should get the description of the top of stack and then do something
    //very similar to the recursion in the runProgram
}

-(void)pushOperand:(double)operand
{
    [self.programStack addObject:[NSNumber numberWithDouble:operand]];
}

-(void)pushVariable:(NSString *)operand
{
    [self.programStack addObject:[NSString stringWithString:operand]];
}

-(double)performOperation:(NSString *)operation
{
    [self.programStack addObject:operation];
    return [CTGBrain runProgram:self.program];
}

+(double)popOperandOffStack:(NSMutableArray *)stack
{
    double result = 0;
    
    id topOfStack = [stack lastObject];
    if (topOfStack) [stack removeLastObject];
    
    // If the top of the stack is a number, process number 
    if ([topOfStack isKindOfClass:[NSNumber class]]) {
        result = [topOfStack doubleValue];
    } 
    // Otherwise, process as an operation
    else if ([topOfStack isKindOfClass:[NSString class]]) {
        NSString *operation = topOfStack;
        
        if ([operation isEqualToString:@"+"]) {
            result = [self popOperandOffStack:stack] + [self popOperandOffStack:stack];
        } else if ([@"*" isEqualToString:operation]) {
            result = [self popOperandOffStack:stack] * [self popOperandOffStack:stack];
        } else if ([operation isEqualToString:@"-"]) {
            double subtrahend = [self popOperandOffStack:stack];
            result = [self popOperandOffStack:stack] - subtrahend;
        } else if ([operation isEqualToString:@"/"]) {
            double divisor = [self popOperandOffStack:stack];
            if (divisor) result = [self popOperandOffStack:stack] / divisor;
        } else if ([operation isEqualToString:@"sin"]) {
            result = sin([self popOperandOffStack:stack]);
        } else if ([operation isEqualToString:@"cos"]) {
            result = cos([self popOperandOffStack:stack]);
        } else if ([operation isEqualToString:@"sqrt"]) {
            result = sqrt([self popOperandOffStack:stack]);
        } else if ([operation isEqualToString:@"π"]) {
            result = M_PI ;
        }
    
    }
    return result; 
}

+(BOOL)isStringAVariable:(id)program
{
    // If string is a variable, than return YES
}
    
+(double)runProgram:(id)program;
{
    NSMutableArray *stack;
    if ([program isKindOfClass:[NSArray class]]) {
        stack = [program mutableCopy];
    }
    return [self popOperandOffStack:stack];
}
    
+(double)runProgram:(id)program usingVariableValues:(NSDictionary *)variableValues
{
    NSMutableArray *stack;
    if ([program isKindOfClass:[NSArray class]]) {
        stack = [program mutableCopy];
    }
    
    if(variableValues) {
    //this method takes a program and susbstitutes for the variables to build
    //a new program. The new program is then run into runProgram
    //First, check to see if variable values exist, and if they do then iterate, etc.
    
    /* If the top of stack is a string, however, then 1)determine if it is a variable, and if so, replace with test value
     
     
          if(variable) {
     NSDictionary *variableValues = [[NSDictionary alloc] init];
     if(variable == @"x")[variableValues setObject:testValue forKey:@"x"];
     if(variable == @"y")[variableValues setObject:testValue forKey:@"y"];
     if(variable == @"z")[variableValues setObject:testValue forKey:@"z"];
     }
     /// get the index # for the topOfStack object to replace with values of ///variables for operations to run 
     int topOfStackIndex = [stack indexOfObject:topOfStack];
     
     int i;
     for(i=0; i<20; i++) {
     
     }
     
     [stack replaceObjectAtIndex:topOfStackIndex withObject:variableValue];*/

    return [self popOperandOffStack:stack];
}

+(NSSet *)variablesUsedInProgram:(id)program 
{
    // If variables in program, make a set of variables and their values
}

-(void)clearStack 
{
    [[self programStack] removeAllObjects];
}

-(void)removeLastFromStack  
{
    if ([self.programStack isKindOfClass:[NSNumber class]]) [[self programStack] removeLastObject];
}

@end
