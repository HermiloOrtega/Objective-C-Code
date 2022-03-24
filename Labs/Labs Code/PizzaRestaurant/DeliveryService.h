//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-18.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Kitchen.h"
#import "DeliveryCar.h"

@interface DeliveryService : NSObject
    @property (nonatomic) DeliveryCar *car;
    @property (nonatomic) NSMutableArray *history;

    - (void)deliverPizza:(Pizza *)pizza;
    - (void)saveOrder:(Pizza *)pizza;
@end
