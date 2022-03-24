//
//  ManagerGood.h
//  PizzaRestaurant
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-18.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryService.h"

@interface ManagerGood : NSObject
    @property (nonatomic) DeliveryService *delivery;

    - (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(NSArray *)toppings;
    - (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
    - (void) kitchenDidMakePizza:(Pizza *)pizza;
@end
