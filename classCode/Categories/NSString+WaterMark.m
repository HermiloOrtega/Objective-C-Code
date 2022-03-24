//
//  NSString+WaterMark.m
//  Categories
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-10.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "NSString+WaterMark.h"

@implementation NSString (WaterMark)

- (NSString *) watermark {
  return [@"CICCC " stringByAppendingString:self];
}

@end
