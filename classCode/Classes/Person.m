//
//  Person.m
//  Classes
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-09.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person{
    NSString *_firstName;
    NSString *_lastName;
}

- (instancetype)init{
    self = [super init];
    if(self){
        _firstName = @"";
        _lastName = @"";
    }
    return self;
}

- (instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName
{
  self = [super init];
  if (self) {
    _firstName = firstName;
    _lastName = lastName;
  }
  return self;
}

- (NSString *) firstName {
  return _firstName;
}

- (void) setFirstName: (NSString *) firstName {
  _firstName = firstName;
}

@end
