//
//  Country.h
//  ClassTemplate
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-11.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Country : NSObject

    // Public properties
    @property (nonatomic) NSString *name;

    // Public methods (declarations)
    -(instancetype)initWithNAme: (NSString *) name;

@end

NS_ASSUME_NONNULL_END
