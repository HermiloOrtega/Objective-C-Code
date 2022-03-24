//
//  Person.h
//  ManualMemoryManagement
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-15.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Sweater; // pre-declaration, telling the compiler it exists. (faster compilation)

@interface Person : NSObject

    @property (nonatomic, strong) Sweater *sweater;
    @property (nonatomic, strong) NSString *name;

    -(instancetype)initWithName: (NSString *) name;
    -(NSString *)quote;

@end

NS_ASSUME_NONNULL_END
