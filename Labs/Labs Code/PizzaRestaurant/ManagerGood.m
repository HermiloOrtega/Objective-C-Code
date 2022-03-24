//
//  ManagerGood.m
//  PizzaRestaurant
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-18.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "ManagerGood.h"
#import "DeliveryService.h"

@implementation ManagerGood
    - (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(NSArray *)toppings{
        return TRUE;
    }
    - (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
        return TRUE;
    }
    - (void)kitchenDidMakePizza:(Pizza *)pizza {
        NSLog(@"Nice to see you again!, Large pizza for you :D");
        _delivery = [[DeliveryService alloc] init];
        [_delivery deliverPizza:pizza];
    }
@end
