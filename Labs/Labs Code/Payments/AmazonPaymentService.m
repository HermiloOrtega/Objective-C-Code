//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
    - (void) processPaymentAmount:(NSInteger)amount{
        if (self.canProcessPayment == YES) {
            NSLog(@"Amazon processed amount %ld", (long)amount);
        }else {
            NSLog(@"I'm Sorry, The payments wasn't processed");
        }
    }
    - (BOOL) canProcessPayment{
        return (arc4random_uniform(2) == 1)?YES:NO;
    }
@end
