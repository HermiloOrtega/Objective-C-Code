//
//  QuestionManager.h
//  Math
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-12.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject
    @property NSMutableArray *questions;
    -(instancetype) init;
    -(NSString *) timeOutput;
@end
