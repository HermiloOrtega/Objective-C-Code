//
//  main.m
//  Lab13
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-08.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+stringByPigLatinization.h"

NSString *getUserInput(int maxLength, NSString *prompt){
    if (maxLength<1) { maxLength = 255; }
    NSLog(@"%@", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    }
    return NULL;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int LONG_INPUT_CHAT = 255;
        printf("-------- Lab 13 ---------\n");
        printf("------ PIG LATIN --------\n");
        printf("-------------------------\n");
        printf("---'q' to quit the game--\n");
        printf("-------------------------\n\n");
        
        while (1) {
            NSString *answer = getUserInput(LONG_INPUT_CHAT, @"Word: ");
            if([answer isEqualToString:@"q"]){ break; }
            NSLog(@"%@",[answer stringByPigLatinization]);
        }
    }
    return 0;
}
