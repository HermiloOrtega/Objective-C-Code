//
//  Sweater.h
//  ManualMemoryManagement
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-15.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Person;

typedef NS_ENUM(unsigned char, SweaterType){
    SweaterTypeGray,
    SweaterTypeNavy,
    SweaterTypeBlack,
};

@interface Sweater : NSObject
    @property (assign) SweaterType type;
    @property (nonatomic, weak) Person *owner;
    -(instancetype)initWithSweaterType:(SweaterType)type;
@end

NS_ASSUME_NONNULL_END
