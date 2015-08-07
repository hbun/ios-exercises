//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *mutableCharArray = [[characterArray valueForKey:@"description"] mutableCopy];
    NSSortDescriptor *alpha = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    return [mutableCharArray sortedArrayUsingDescriptors:@[alpha]];
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {

    for (NSString *charName in characterArray) {
        NSString *lowercaseName = charName.lowercaseString;
        NSRange worfRange = [lowercaseName rangeOfString:@"worf"];
        
        if (worfRange.location != NSNotFound){
            return YES;
        }
    }
    return NO;
}
@end
