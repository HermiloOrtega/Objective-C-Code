//
//  User.m
//  Classes
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-09.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@implementation User

- (instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName
{
  self = [super init];
  if (self) {
    _firstName = firstName;
    _lastName = lastName;
  }
  return self;
}

+ (void) sayHello {
  NSLog(@"Hello");
}

+ (NSString *) fullName {
  static NSString *fn = @"Derrick Park";
  return fn;
}

@end
