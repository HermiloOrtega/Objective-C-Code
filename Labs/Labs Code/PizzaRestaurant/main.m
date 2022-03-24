//
//  main.m
//  PizzaRestaurant
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-16.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Manager.h"
#import "ManagerGood.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[]){
    @autoreleasepool {
        Kitchen     *restaurantKitchen  = [[Kitchen alloc] init];
        ManagerGood *managerGood        = [[ManagerGood alloc] init];
        Manager     *manager            = [[Manager alloc] init];
        
        while (TRUE) {
            NSLog(@"\n\nPlease pick your pizza size and toppings:\n>");
            char str[100];
            fgets (str, 100, stdin);
            NSArray *commandWords = [[[[NSString alloc] initWithUTF8String:str] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] componentsSeparatedByString:@" "];
            
            NSLog(@"\n\nWho do you want to make the Pizza? \n1.- Manager Anti Anchovi \n2.- Manager cool \n3.- No manager \n>");
            fgets (str, 100, stdin);
            NSString *managerOption = [[[NSString alloc] initWithUTF8String:str] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            restaurantKitchen.delegate = ([managerOption isEqual:@"1"])? manager: ([managerOption isEqual:@"2"])?managerGood:NULL;
            
            Kitchen *kitchen = [restaurantKitchen init:commandWords];
            if ([kitchen pizza] == NULL) NSLog(@"Sorry we can't take your order");
            
            NSLog(@"%@", [[kitchen pizza] description]);
            
            if ([[[managerGood delivery] history]count] > 0) {
                NSLog(@"Orders %lu delivered", [[[managerGood delivery] history] count]);
                int count = 0;
                for (Pizza *pizza in [[managerGood delivery] history]) {
                    NSLog(@"\t - Order #%d: %@", count, pizza);
                    count++;
                }
            }
        }
    }
    return 0;
}
