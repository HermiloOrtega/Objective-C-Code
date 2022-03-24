//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-16.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    small,
    medium,
    large,
}pizzaSize;

@interface Pizza : NSObject
    @property(nonatomic) pizzaSize size;
    @property(nonatomic) NSArray *toppics;
    
    - (instancetype)initWitSize: (pizzaSize) size andToppics: (NSArray *) toppics;
    - (pizzaSize)pizzaSize;
    - (NSArray *)pizzaToppics;
    - (NSString *)description;
@end
