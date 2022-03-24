//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen
    - (instancetype)init: (NSArray *) commandWords{
        self = [super init];
        if (self) {
            _pizza                 = [[Pizza alloc] init];
            pizzaSize size        = ([[[commandWords objectAtIndex:0] description] isEqual:@"small"])?small:([[[commandWords objectAtIndex:0] description] isEqualToString:@"medium"])?medium:large;
            NSArray   *toppings   = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)];
            
            if ([[[commandWords objectAtIndex:0] description] isEqualToString:@"peperonni"]){
                _pizza = [self largePepperoni];
                return self;
            }
            if(_delegate == NULL) {
                _pizza = ([[[toppings objectAtIndex:1] description] isEqualToString:@"meatlovers"])?[self meatLoversWithSize:size]:[self makePizzaWithSize:size toppings:toppings];
                return self;
            }
            if (![_delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
                _pizza = NULL;
                return self;
            }
            _pizza = [self makePizzaWithSize:([_delegate kitchenShouldUpgradeOrder:self])?large:size toppings:toppings];
            
            if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) [_delegate kitchenDidMakePizza:_pizza];
        }
        return self;
    }
    - (Pizza *)makePizzaWithSize: (pizzaSize)size toppings:(NSArray *)toppings{
        return [[Pizza alloc]initWitSize:size andToppics:toppings];
    }
    - (Pizza *)largePepperoni{
        return [self makePizzaWithSize:large toppings:@[@"peperonni"]];
    }
    - (Pizza *)meatLoversWithSize: (pizzaSize) size{
        return [self makePizzaWithSize:size toppings:@[@"cheese", @"bacon", @"ham", @"pepperoni"]];
    }
@end
