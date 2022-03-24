//
//  Boss.h
//  Protocols&DelegatePattern
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AccountantDelegate
    @required
        -(float) calcTax;
    @optional
        -(bool) goodLooking;
@end

@interface Boss : NSObject
    @property (nonatomic, weak) id<AccountantDelegate> delegate;
    -(void) calculateTax;
@end

NS_ASSUME_NONNULL_END
