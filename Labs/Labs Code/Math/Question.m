//
//  AdditionQuestion.m
//  Math
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-09.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@implementation Question
    
    - (instancetype)init{
        self = [super init];
        if (self) {
            _countRight = 0;
            _countWrong = 0;
        }
        return self;
    }

    - (NSString *) generateRandomQuestion{
        _rOperation = arc4random_uniform(4);
        _leftValue  = arc4random_uniform(100);
        _rightValue = arc4random_uniform(100);
        switch (_rOperation) {
            case 1:
                _question = [NSString stringWithFormat:@"Question: %ld * %ld?", (long)_leftValue, (long)_rightValue];
                _answer = _leftValue * _rightValue; break;
            case 2:
                _question = [NSString stringWithFormat:@"Question: %ld / %ld?", (long)_leftValue, (long)_rightValue];
                _answer = _leftValue / _rightValue; break;
            case 3:
                _question = [NSString stringWithFormat:@"Question: %ld - %ld?", (long)_leftValue, (long)_rightValue];
                _answer = _leftValue - _rightValue; break;
            default:
                _question = [NSString stringWithFormat:@"Question: %ld + %ld?", (long)_leftValue, (long)_rightValue];
                _answer = _leftValue + _rightValue; break;
        }
        _startTime = [NSDate date];
        return _question;
    }

    - (void) answer: (int) guessAnswer{
        switch (_rOperation) {
            case 1:
                if ((_leftValue * _rightValue) == guessAnswer) {
                    _countRight++; NSLog(@"Right!");
                } else{
                    _countWrong++; NSLog(@"Wrong!");
                }
            break;
            case 2:
                if ((_leftValue / _rightValue) == guessAnswer) {
                    _countRight++; NSLog(@"Right!");
                } else{
                    _countWrong++; NSLog(@"Wrong!");
                }
            break;
            case 3:
                if ((_leftValue - _rightValue) == guessAnswer) {
                    _countRight++; NSLog(@"Right!");
                } else{
                    _countWrong++; NSLog(@"Wrong!");
                }
            break;
            default:
                if ((_leftValue + _rightValue) == guessAnswer) {
                    _countRight++; NSLog(@"Right!");
                } else{
                    _countWrong++; NSLog(@"Wrong!");
                }
                break;
        }
        _endTime = [NSDate date];
        NSTimeInterval seconds = [_endTime timeIntervalSinceDate:_startTime];
        _totalTime += seconds;
    }

@end
