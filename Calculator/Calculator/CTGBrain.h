//
//  CTGBrain.h
//  Calculator
//
//  Created by Flora Worley on 7/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTGBrain : NSObject

-(void)pushOperand:(double)operand;
-(void)pushVariable:(NSString *)operand;
-(double)performOperation:(NSString *)operation;
-(void)clearStack;
-(void)removeLastFromStack;

@property (nonatomic, readonly) id program;

+(NSString *)descriptionOfProgram:(id)program;
+(double)runProgram:(id)program;
+(double)runProgram:(id)program usingVariableValues:(NSDictionary *)variableValues;
+(BOOL)isStringAVariable:(id)program;
+(NSSet *)variablesUsedInProgram:(id)program;

@end
