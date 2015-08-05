//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favoriteCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favoriteCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSRange cheeseRange = [cheeseName rangeOfString:@" CHEESE" options:NSCaseInsensitiveSearch];
        NSString *cheeseNameSansCheese = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return cheeseNameSansCheese;
    } else {
        return cheeseName;
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        return [NSString stringWithFormat:@"1 cheese"];
    } else {
        NSString *multiCheese = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
        return multiCheese;
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nil;
}

@end
