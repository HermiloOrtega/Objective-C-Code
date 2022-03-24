//
//  Cook.m
//  Foodtruck
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-11.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "Cook.h"

@implementation Cook
    -(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
        return ([food isEqualToString:@"bao"]) ? 4.5 : ([food isEqualToString:@"shortbread"]) ? 8.5 : 0;
    }
@end
