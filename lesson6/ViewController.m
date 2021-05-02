//
//  ViewController.m
//  lesson6
//
//  Created by macbook on 02.05.2021.
//

#import "ViewController.h"
#import "Arithmetic.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1-st TASK
    int first = 10;
    int second = 2;
    
    int resultSum = [Arithmetic beginWithAction:ActionTypeSum firstNumber:first secondNumber:second];
    int resultSubstraction = [Arithmetic beginWithAction:ActionTypeSubstraction firstNumber:first secondNumber:second];
    int resultMultiplication = [Arithmetic beginWithAction:ActionTypeMultiplication firstNumber:first secondNumber:second];
    int resultDivision = [Arithmetic beginWithAction:ActionTypeDivision firstNumber:first secondNumber:second];
    int resultRemainderOfTheDivision = [Arithmetic beginWithAction:ActionTypeRemainderOfTheDivision firstNumber:first secondNumber:second];
    
    //2-nd TASK
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"Result sum - %i", resultSum);
    });
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"Result substraction - %i", resultSubstraction);
    });
    
    
    NSOperationQueue *mainQueue = [NSOperationQueue mainQueue];

    [mainQueue addOperationWithBlock:^{
        NSLog(@"Result multiplication - %i", resultMultiplication);
        NSLog(@"Result division - %i", resultDivision);
        NSLog(@"Result remainder of the division - %i", resultRemainderOfTheDivision);
    }];
}


@end
