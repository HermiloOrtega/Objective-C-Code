//
//  main.m
//  Protocols&DelegatePattern
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boss.h"
#import "Martin.h"
#import "Deloite.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Martin *martin = [Martin new];
        Deloite *deloite = [Deloite new];
        
        Boss *boss = [Boss new];
        boss.delegate = martin;
        
        [boss calculateTax];
    }
    return 0;
}
