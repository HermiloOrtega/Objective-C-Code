//
//  GameController.m
//  ThreeLow
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-15.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"
#import "InputHandler.h"

@implementation GameController

    - (instancetype)init{
        self = [super init];
        if (self) {
            [self resetDices];
        }
        return self;
    }
    - (void) rollDices{
        if (_rollCount<2) {
            NSLog(@"NO MORE ROLL AVAILABLE");
            [self doneGame];
            return;
        };
        for (int i = 0; i < 5; i++) if (![_dicesHeld containsObject:[_dices objectAtIndex:i]]) [[_dices objectAtIndex:i] randomCurrentValue];
        _rollCount--;
        [self displayDices];
    }
    - (void) holdDice:(Dice *) dice index: (NSInteger) index gameOver: (BOOL) gameOver{
        if ([_dicesHeld containsObject:dice]) {
            _Score = _Score - [[_dicesHeld objectAtIndex:index] currentValue];
            [_dicesHeld setObject:[[Dice alloc] init] atIndexedSubscript:index];
        } else {
            [_dicesHeld setObject:dice atIndexedSubscript:index];
            _Score = _Score + [[_dicesHeld objectAtIndex:index] currentValue];
        }
        if (!gameOver) [self displayDices];
    }
    - (void) resetDices{
        _rollCount = 5;
        _Score = 0;
        _dices = [[NSMutableArray alloc] init];
        _dicesHeld = [[NSMutableArray alloc] init];
        for (int i = 0; i<5; i++) {
            [_dices     addObject:[[Dice alloc] init]];
            [_dicesHeld addObject:[[Dice alloc] init]];
        }
        [self displayDices];
    }
    - (void) doneGame{
        NSLog(@"--------------------");
        NSLog(@"---   GAME OVER  ---");
        NSLog(@"--------------------");
        for (int i = 0; i < 5; i++) if ([[_dicesHeld objectAtIndex:i]currentValue]<1) [self holdDice:[_dices objectAtIndex:i] index:i gameOver: true];
        _rollCount = 0;
        [self displayDices];
    }
    - (void) displayDices{
        NSLog(@"Remaining Rolls: %ld ", (long)_rollCount);
        NSLog(@"--------------------");
        NSLog(@"--- Current Dice ---");
        NSLog(@" %@ %@ %@ %@ %@",
              ([[_dicesHeld objectAtIndex:0]currentValue]>0)?[[_dicesHeld objectAtIndex:0]value:true]:[[_dices objectAtIndex:0]value:false],
              ([[_dicesHeld objectAtIndex:1]currentValue]>0)?[[_dicesHeld objectAtIndex:1]value:true]:[[_dices objectAtIndex:1]value:false],
              ([[_dicesHeld objectAtIndex:2]currentValue]>0)?[[_dicesHeld objectAtIndex:2]value:true]:[[_dices objectAtIndex:2]value:false],
              ([[_dicesHeld objectAtIndex:3]currentValue]>0)?[[_dicesHeld objectAtIndex:3]value:true]:[[_dices objectAtIndex:3]value:false],
              ([[_dicesHeld objectAtIndex:4]currentValue]>0)?[[_dicesHeld objectAtIndex:4]value:true]:[[_dices objectAtIndex:4]value:false]);
        NSLog(@" ");
        NSLog(@"---  Total Score ---");
        NSLog(@"---       %ld      ---", (long)_Score);
        NSLog(@"--------------------");
    }

@end
