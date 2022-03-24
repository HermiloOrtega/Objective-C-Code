//
//  Person.m
//  ManualMemoryManagement
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-15.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "Person.h"

@implementation Person

    - (instancetype)initWithName: (NSString *) name{
        if (self = [super init]) {
            _name = name;
            _sweater = nil;
        }
        return self;
    }
    - (NSString *) quote{
        return [[NSString alloc] initWithFormat:@"says: Give me my sweater back!", _name];
    }
    - (NSString *) description{
        if(_sweater){
            return [NSString stringWithFormat:@"%@ (wearing %@)", _name, _sweater];
        }else{
            return _name;
        }
    }
    -(void)dealloc{
        NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self);
    }
@end
