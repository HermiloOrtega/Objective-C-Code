//
//  AdditionQuestion.h
//  Math
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-09.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject
    @property (nonatomic, strong) NSString *question;
    @property (nonatomic) NSInteger answer;
    @property (nonatomic, strong) NSDate *startTime;
    @property (nonatomic, strong) NSDate *endTime;
    @property (nonatomic) NSInteger rightValue;
    @property (nonatomic) NSInteger leftValue;
    
    @property (nonatomic) int countRight;
    @property (nonatomic) int countWrong;

    @property (nonatomic) int rOperation;
    @property (nonatomic) float score;
    
    @property (nonatomic) int totalTime;

    - (instancetype)init;
    - (NSString *) generateRandomQuestion;
    - (void) answer: (int) guessAnswer;

@end
