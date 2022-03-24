//
//  Dice.m
//  ThreeLow
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-15.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "Dice.h"

@implementation Dice

    - (instancetype)init
    {
        self = [super init];
        if (self) {
            _currentValue = 0;
        }
        return self;
    }
    - (NSInteger) randomCurrentValue{
        _currentValue = arc4random_uniform(6)+1;
        // NSLog(@"%ld", (long)_currentValue);
        return _currentValue;
    }
    - (NSString *) value: (BOOL) held{
        switch (_currentValue) {
            case 1: return (held)?@"[1]":@"1"; break;
            case 2: return (held)?@"[2]":@"2"; break;
            case 3: return (held)?@"[3]":@"3"; break;
            case 4: return (held)?@"[4]":@"4"; break;
            case 5: return (held)?@"[5]":@"5"; break;
            case 6: return (held)?@"[6]":@"6"; break;
        }
        return @"";
    }

@end
