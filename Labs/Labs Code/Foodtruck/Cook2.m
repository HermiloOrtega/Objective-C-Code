//
//  Cook2.m
//  Foodtruck
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-12.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "Cook2.h"

@implementation Cook2
    -(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
        return ([food isEqualToString:@"bao"]) ? 5.5 : ([food isEqualToString:@"shortbread"]) ? 10 : 0;
    }
@end
