//
//  GameController.h
//  ThreeLow
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-15.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

    @property (nonatomic) NSInteger rollCount;
    @property (nonatomic) NSInteger LIMIT_ROLLS;
    @property (nonatomic) NSInteger Score;
    @property (nonatomic) NSMutableArray *dices;
    @property (nonatomic) NSMutableArray *dicesHeld;

    - (instancetype)init;
    - (void) rollDices;
    - (void) holdDice:(Dice *) dice index: (NSInteger) index gameOver: (BOOL) gameOver;
    - (void) resetDices;
    - (void) doneGame;
    - (void) displayDices;
@end

NS_ASSUME_NONNULL_END
