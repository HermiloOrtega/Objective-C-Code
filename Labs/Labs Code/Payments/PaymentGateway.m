//
//  PaymentGateway.m
//  Payments
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

    -(void) processPaymentAmount: (NSInteger) PaymentAmount{
        [_delegate processPaymentAmount:PaymentAmount];
    }

@end
