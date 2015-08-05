//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {

    if (number == otherNumber) {
        return [NSString stringWithFormat:@"%ld", (long)number];
    }
    
    NSInteger lowNumber, highNumber;
    
    if (number > otherNumber) {
        lowNumber = otherNumber;
        highNumber = number;
    } else if (otherNumber > number) {
        lowNumber = number;
        highNumber = otherNumber;
    }
    
    NSMutableString *count = [NSMutableString string];
    
    for (NSInteger n = lowNumber; n <= highNumber; n++) {
        [count appendFormat:@"%ld", (long)n ];
    }
    
    return count;
    
}




























//
//
//    if (number == otherNumber) {
//        
//       return [NSString stringWithFormat:@"%ld", (long)number];
//    
//    }
//    
//    NSInteger lowNumber, highNumber;
//    
//    if (otherNumber > number) {
//    
//        highNumber = otherNumber;
//        lowNumber = number;
//    
//    } else if (number > otherNumber){
//        highNumber = number;
//        lowNumber = otherNumber;
//    }
//    
//    NSMutableString *count = [NSMutableString string];
//    
//    for (NSInteger n = lowNumber; n <= highNumber; n++) {
//        [count appendFormat:@"%ld",(long)n];
//    }
//    
//    return count;
//    
//}

@end
