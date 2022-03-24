//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-18.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

@interface Manager : NSObject
    - (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(NSArray *)toppings;
    - (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
@end
