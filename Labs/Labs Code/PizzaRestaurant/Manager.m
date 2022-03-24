//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-18.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "Manager.h"
#import "Kitchen.h"
#import "Pizza.h"

@implementation Manager
    - (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(NSArray *)toppings{
        return ([toppings containsObject: @"anchovies"])?FALSE:TRUE;
    }
    - (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
        return FALSE;
    }
@end
