//
//  ApplePaymentService.m
//  Payments
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService
    - (void) processPaymentAmount:(NSInteger)amount{
        if (self.canProcessPayment == YES) {
            NSLog(@"Apple processed amount %ld", (long)amount);
        }else {
            NSLog(@"I'm Sorry, The payments wasn't processed");
        }
    }
    - (BOOL) canProcessPayment{
        return (arc4random_uniform(2) == 1)?YES:NO;
    }
@end
