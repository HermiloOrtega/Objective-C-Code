//
//  Comparable.h
//  classCode (Derrick)
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Comparable
    @optional
        -(void) optionalMethod;
        -(void) optionalMethod1;
        -(void) optionalMethod2;
    @required
        -(void) requiredMethod;
        -(void) requiredMethod1;
        -(void) requiredMethod2;
@end
