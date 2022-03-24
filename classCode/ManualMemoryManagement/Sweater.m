//
//  Sweater.m
//  ManualMemoryManagement
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-15.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "Sweater.h"

@implementation Sweater

    -(instancetype)initWithSweaterType:(SweaterType)type{
        if (self = [super init]) {
            _type = type;
        }
        return self;
    }
    - (NSString *)description{
        switch (_type) {
            case SweaterTypeGray:  return @"Gray Sweater";  break;
            case SweaterTypeNavy:  return @"Navy Sweater";  break;
            case SweaterTypeBlack: return @"Black Sweater"; break;
        }
    }
    - (void)dealloc{
        NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self);
    }

@end
