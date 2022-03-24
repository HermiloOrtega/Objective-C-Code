//
//  main.m
//  Blocks
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-16.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BlockTester.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BlockTester *tester = [BlockTester new];
        NSLog(@"RunTest1");
        [tester runTest1];
        NSLog(@" ");

        NSLog(@"RunTest2");
        [tester runTest2];
        NSLog(@" ");

        NSLog(@"RunTest3");
        [tester runTest3];
        NSLog(@" ");

        NSLog(@"RunTest4");
        [tester runTest4];
    }
    return 0;
}
