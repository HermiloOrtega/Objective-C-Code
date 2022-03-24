//
//  NSString+stringByPigLatinization.m
//  Lab13
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-10.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "NSString+stringByPigLatinization.h"

@implementation NSString (stringByPigLatinization)

- (NSString *) stringByPigLatinization{
    
    // EXAMPLES
    // Consonant Clusters = "smile" : "ilesmay"             -> il  - sm     - ay
    //                      "string" = "ingstray"
    //                      "stupid" = "upidstay"
    //                      "glove" = "oveglay"
    //                      "trash" = "ashtray"
    //                      "floor"= "oorflay"
    //                      "store"= "orestay"
    // Vowels             = "eat"   : "eatyay" or "eatay"   -> eat - yay/ay
    //                      "omelet" = "omeletyay" or "omeletay"
    //                      "are" = "areyay" or "areay"
    //                      "egg" = "eggyay" or "eggay"
    //                      "explain" = "explainyay"
    //                      "always" = "alwaysyay" or "alwaysay"
    //                      "ends" = "endsyay" or "endsay"
    //                      "honest" = "honestyay"
    //                      "I"= "Iyay"
    // Consonant          = "pig"   : "igpay"               -> ig  - p      - ay
    //                      "latin" = "atinlay"
    //                      "banana" = "ananabay"
    //                      "will" = "illway"
    //                      "butler" = "utlerbay"
    //                      "happy" = "appyhay"
    //                      "duck" = "uckday"
    //                      "me" = "emay"
    
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"];
    
    NSString *prefix = [[self substringWithRange:NSMakeRange(0,2)] lowercaseString];
    
    if ([[clusters valueForKey:@"lowercaseString"] containsObject: prefix]) {
        return [[ [[self substringWithRange:NSMakeRange(2,[self length]-2)] stringByTrimmingCharactersInSet: [NSCharacterSet newlineCharacterSet]]
                 stringByAppendingString: prefix]
                 stringByAppendingString: @"ay"];
    } else {
        if ([vowels characterIsMember: [self characterAtIndex:0]]){
            return [[self stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]] stringByAppendingString:@"yay"];
        }
        else{
            if ([prefix isEqualToString:@"ho"]) {
                return [[self stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]] stringByAppendingString:@"yay"];
            } else {
                return [[ [[self substringWithRange:NSMakeRange(1,[self length]-2)] stringByTrimmingCharactersInSet: [NSCharacterSet newlineCharacterSet]] stringByAppendingString: [[self substringWithRange:NSMakeRange(0,1)] stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]]] stringByAppendingString:@"ay"];
            }
        }
    }
    return NULL;
}

@end
