//
//  main.m
//  Foodtruck
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-11.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "Cook2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a bao" andFoodType:@"bao"];
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // Example Cook 1
            Cook *cookA=[[Cook alloc] init];
            Cook *cookB=[[Cook alloc] init];
            
            truckA.delegate = cookA;
            truckB.delegate = cookB;
            
            [truckA serve: 10];
            [truckB serve: 5];
            
            [truckA cashOut];
            [truckB cashOut];
        
        NSLog(@" \n --- \n ");
        // Example Cook 2
            Cook2 *cook2A=[[Cook2 alloc] init];
            Cook2 *cook2B=[[Cook2 alloc] init];
            truckA.delegate = cook2A;
            truckB.delegate = cook2B;
            
            [truckA serve: 10];
            [truckB serve: 5];
            
            [truckA cashOut];
            [truckB cashOut];
    }
    return 0;
}
