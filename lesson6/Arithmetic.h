//
//  Arithmetic.h
//  lesson6
//
//  Created by macbook on 02.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef int (^ArithmeticBlock) (int a, int b);

typedef enum ActionType {
    ActionTypeSum,
    ActionTypeSubstraction,
    ActionTypeMultiplication,
    ActionTypeDivision,
    ActionTypeRemainderOfTheDivision
} ActionType ;

@interface Arithmetic : NSObject

+ (int)beginWithAction:(ActionType)action firstNumber: (int)first secondNumber: (int)second;

@end

NS_ASSUME_NONNULL_END
