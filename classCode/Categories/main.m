//
//  main.m
//  Categories
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-10.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+WaterMark.h"
#define MESSAGE "Hello, World!"
#define SQUARE(x) ((x)*(x))

// -E : preprocessed output

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSString *greeting = @MESSAGE;

    NSLog(@"%@", [greeting watermark]);
    
    NSLog(@"square of 5: %d", SQUARE(5));
  }
  return 0;
}
