//
//  PaypalPaymentService.h
//  Payments
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaypalPaymentService : NSObject <PaymentDelegate>
    - (void) processPaymentAmount:(NSInteger)amount;
@end

NS_ASSUME_NONNULL_END
