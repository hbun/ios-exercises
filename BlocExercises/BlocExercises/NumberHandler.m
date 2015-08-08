//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    return [NSNumber numberWithInt:([number intValue] * 2)];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    if (number == otherNumber) {
        return @[@(number)];
    }
        NSInteger lower, higher;
    
    if (otherNumber > number) {
        lower = number;
        higher = otherNumber;
    } else {
        lower = otherNumber;
        higher = number;
    }
        NSMutableArray *returnArray = [NSMutableArray array];
        
        for (NSInteger i = lower; i <= higher; i++) {
            [returnArray addObject:@(i)];
    }
    return returnArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSNumber *lowest = [arrayOfNumbers valueForKeyPath:@"@min.self"];
    return [lowest integerValue];
}

@end
