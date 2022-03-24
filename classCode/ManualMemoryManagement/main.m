//
//  main.m
//  ManualMemoryManagement
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-15.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sweater.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *hermilo = [[Person alloc] initWithName:@"Hermilo"];
        Person *derrick = [[Person alloc] initWithName:@"Derrick"];
        // hermilo -> @Person(@"Hermilo")                   +1
        // derrick -> @Person(@"Derrick")                   +1
        
        Sweater *navySweater  = [[Sweater alloc] initWithSweaterType:SweaterTypeNavy];
        Sweater *blackSweater = [[Sweater alloc] initWithSweaterType:SweaterTypeBlack];
        // navySweater -> @Sweater(SweaterTypeNavy)         +1
        // blackSweater -> @Sweater(SweaterTypeBlack)       +1
        
        hermilo.sweater = blackSweater;
        derrick.sweater = navySweater;
        // Sweater property(retain) will increment the ref count
        // hermilo.sweater -> @Sweater(SweaterTypeBlack)    +2
        // derrick.sweater -> @Sweater(SweaterTypeNavy)     +2
        
        navySweater = nil;
        blackSweater = nil;
        // hermilo.sweater -> @Sweater(SweaterTypeBlack)    +1
        // derrick.sweater -> @Sweater(SweaterTypeNavy)     +1
        
        derrick.sweater = blackSweater;
        // hermilo.sweater ->
        //                    @Sweater(SweaterTypeBlack)    +2
        // derrick.sweater ->
        
        derrick.sweater = nil;
        // derrick.sweater -> nil
        // hermilo.sweater -> @Sweater(SweaterTypeBlack)    +1
        hermilo = nil;
        derrick = nil;
        
        Person *p1 = [[Person alloc] initWithName:@"Hermilo"];
        Sweater *s1 = [[Sweater alloc] initWithSweaterType:SweaterTypeBlack];
        
        p1.sweater = s1;
        s1.owner = p1;
        
        p1 = nil;
        s1 = nil;
    }
    return 0;
}
