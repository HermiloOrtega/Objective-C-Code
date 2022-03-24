//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "KitchenDelegate.h"

@class Kitchen;

@interface Kitchen : NSObject
    @property (nonatomic) Pizza *pizza;
    @property (nonatomic, weak) id<KitchenDelegate> delegate;
    - (instancetype)init: (NSArray *) commandWords;
@end
