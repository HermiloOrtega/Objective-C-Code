//
//  main.m
//  ThreeLow
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-15.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("\n\n--------- Lab 16 ---------\n-------- THREELOW --------\n---'q' to quit the game---\n--------------------------\n\n_");
        InputHandler *inputHandler = [[InputHandler alloc] init];
        GameController *gameController = [[GameController alloc] init];
        while (1) {
            NSString *input = [inputHandler getUserInput:@"\n\n1: 'roll' to roll the dice \n2: 'hold' to hold a dice \n3: 'reset' to un-hold all dice \n4: 'done' to end the game\n5: 'display' to show the current stats\nOption:"];
            
            if ([input isEqualToString:@"roll"]) {
                ([gameController rollCount]>0)?[gameController rollDices]  :NSLog(@"\n\n--GAME OVER--\nReset the game to continue\n\n_");
            } else if([input isEqualToString:@"hold"]) {
                NSString *index = [inputHandler getUserInput:@"\n\nEnter the number of the Dice:"];
                [gameController holdDice:[[gameController dices] objectAtIndex:[index intValue]-1] index:[index intValue]-1 gameOver:false];
            } else if([input isEqualToString:@"reset"]) {
                [gameController resetDices];
            } else if([input isEqualToString:@"done"]) {
                ([gameController rollCount]>0)?[gameController doneGame]    :NSLog(@"\n\n--GAME OVER--\nReset the game to continue\n\n_");
            } else if([input isEqualToString:@"display"]) {
                [gameController displayDices];
            } else{
                NSLog(@"Wrond Option");
                [gameController displayDices];
            }
        }
    }
    return 0;
}
