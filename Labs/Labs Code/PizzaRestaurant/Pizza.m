//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-16.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
    - (instancetype)initWitSize: (pizzaSize) size andToppics: (NSArray *) toppics{
        self = [super init];
        if (self) {
            _size = size;
            _toppics = toppics;
        }
        return self;
    }
    - (pizzaSize)pizzaSize{
        return _size;
    }
    - (NSArray *)pizzaToppics{
        return _toppics;
    }
    - (NSString *)description{
        NSString * size = (_size == small)?@"small":(_size == medium)?@"medium":@"large";
        return[NSString stringWithFormat:@"Here is Sr, Your %@ pizza with %@, Have a good day!", size, [_toppics componentsJoinedByString:@", "]];
    }
@end
