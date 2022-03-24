//
//  PaymentGateway.h
//  Payments
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate
    - (void) processPaymentAmount: (NSInteger) amount;
    - (BOOL) canProcessPayment;
@end

@interface PaymentGateway : NSObject
    // Properties
    @property (nonatomic, weak) id<PaymentDelegate> delegate;
    // Methods
    -(instancetype)init;
    -(void) processPaymentAmount: (NSInteger) PaymentAmount;
@end

NS_ASSUME_NONNULL_END
