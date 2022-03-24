//
//  main.m
//  Math
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-09.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        printf("--------- Lab 3 ---------\n");
        printf("---- MATHS GAME APP -----\n");
        printf("---'q' to quit the game--\n");
        printf("-------------------------\n\n");
        ScoreKeeper     *scoreKeeper     = [[ScoreKeeper alloc] init];
        InputHandler    *inputHandler    = [[InputHandler alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        Question        *questions       = [[Question alloc] init];
        while (gameOn) {
            //questionManager
            NSLog(@" ");
            NSLog(@"%@",[questions generateRandomQuestion]);
            [questions answer: [[inputHandler getUserInput : @"Answer:"] intValue]];
            [scoreKeeper printScoreWithCountRight:[questions countRight] andCountWrong:[questions countWrong]];
        }
    }
    return 0;
}
