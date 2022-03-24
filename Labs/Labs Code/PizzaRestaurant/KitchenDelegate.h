//
//  KitchenDelegate.h
//  Labs Code
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-19.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "Pizza.h"

@class Kitchen;
@protocol KitchenDelegate <NSObject>
    @required
    - (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(NSArray *)toppings;
    - (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
    @optional
    - (void) kitchenDidMakePizza: (Pizza *) pizza;
@end
