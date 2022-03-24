//
//  Dice.h
//  ThreeLow
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-15.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

    @property (nonatomic) NSInteger currentValue;
    - (NSInteger) randomCurrentValue;
    - (NSString *) value: (BOOL) held;

@end

NS_ASSUME_NONNULL_END
