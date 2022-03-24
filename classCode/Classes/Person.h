//
//  Person.h
//  classCode (Derrick)
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-09.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (instancetype)init;
- (instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName;
- (NSString *) firstName;
- (void) setFirstName: (NSString *) firstName;
