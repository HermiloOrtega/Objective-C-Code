//
//  main.m
//  ClassTemplate
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-11.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Country *country = [[Country alloc] initWithName:@"Canada"];
        NSLog(@"%@", [country name]);
    }
    return 0;
}
