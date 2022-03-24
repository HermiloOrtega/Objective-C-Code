//
//  Martin.h
//  Protocols&DelegatePattern
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boss.h"

@interface Martin : NSObject <AccountantDelegate>

    -(float) calcTax;
    -(bool) goodLooking;

@end
