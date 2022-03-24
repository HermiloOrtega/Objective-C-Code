//
//  Boss.m
//  Protocols&DelegatePattern
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "Boss.h"

@implementation Boss

- (void) calculateTax{
    if (![((NSObject *) _delegate) respondsToSelector:@selector(goodLooking)]) {
        //NSLog(@"Tax this year: %f", [_delefate calcTax]);
    }
}

@end
