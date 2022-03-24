//
//  QuestionManager.m
//  Math
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-12.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
    - (instancetype)init
    {
        self = [super init];
        if (self) {
            _questions = [NSMutableArray array];
        }
        return self;
    }
    - (NSString *) timeOutput{
        //NSLog(@"Total time: %ds, Average time: %ds", _totalTime, (_totalTime / (_countRight + _countWrong)));
        return @"";
    }
@end
