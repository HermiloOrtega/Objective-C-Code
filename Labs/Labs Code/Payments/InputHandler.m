//
//  InputHandler.m
//  Payments
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"

@implementation InputHandler
    - (NSString *) getUserInput:(NSString *)input{
        NSLog(@"%@ ", input);
        char inputChars[255];
        char *result = fgets(inputChars, 255, stdin);
        if (result != NULL) {
            return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        }
        return NULL;
    }
@end
