//
//  ScoreKeeper.m
//  Math
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-12.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScoreKeeper.h"

@implementation ScoreKeeper
    - (void) printScoreWithCountRight: (int) countRight andCountWrong:(int) countWrong{
        NSLog(@"Your score is: %d right, %d wrong ---- %d%%", countRight, countWrong,
              (countRight == 0)?0:(countRight *100) / (countRight + countWrong));
    }
@end
