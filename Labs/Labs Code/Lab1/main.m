//
//  main.m
//  Lab1
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-08.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

NSInteger wordCount (NSString *input) {
    __block NSInteger wordCount = 0;
    [input enumerateSubstringsInRange:NSMakeRange(0, input.length)
                             options:NSStringEnumerationByWords
                          usingBlock:^(NSString *character, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        wordCount++;
    }];
    return wordCount;
    // Reference: http://borkware.com/quickies/single?id=474
}
NSString *getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) { maxLength = 255; }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        //return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}
NSString *getNewNSSTring(NSString *input, NSString *stdOption){
    NSScanner *sc;
    switch ([stdOption intValue]) {
        case 1: return (void)(@"input was: %@"), [input uppercaseString];                   break;  // MAKE IT LOUDER!
        case 2: return (void)(@"input was: %@"), [input lowercaseString];                   break;  // Make it all lowercase
        case 3:
            sc = [NSScanner scannerWithString: input];
            if ([sc scanFloat:NULL]) { return (void)(@"input was: %d"), input;  }
            else                     { return @"The input wasn't a number";     }           break;  // Convert a number into a number
        case 4: return (void)(@"input was: %@, eh?"), input;                                break;  // Append ", eh?"
        case 5:
            if ([[input substringWithRange:NSMakeRange([input length]-2,1)]  isEqual: @"?"]) { return @"I don't Know";       }
            else                                                                             { return @"Whoa, calm down!";   }
                                                                                            break;  // ? = "I don't know"   /    ! = "Whoa!, Calm down!"
        case 6: return (void)(@"input was: %@"), [input stringByReplacingOccurrencesOfString:@" " withString:@"-"]; break;// Replace spaces with "-"
        case 7: return (void)(@"Number of words %ld"), [@(wordCount(input)) stringValue];   break;  // Count the number of words
        case 8: return (void)(@"input was: %@"), [[input componentsSeparatedByCharactersInSet:[[NSCharacterSet letterCharacterSet] invertedSet]] componentsJoinedByString:@""];
                                                                                            break;// Remove puntuations
        default: NSLog(@"Wrong Option\n"); break;
    }
    return @"Try again\n";
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int LONG_INPUT_CHAR = 255;
        printf("--------- Lab 1 ---------\n");
        printf("-- STRING MANIPULATION --\n");
        printf("-------------------------\n");
        while (1) {
            NSString *input = getUserInput(LONG_INPUT_CHAR, @"Enter your String: ('q' to quit)");
            if([input isEqualToString:@"q"]){ break; }
            while (1) {
                NSString *stdOption = getUserInput(LONG_INPUT_CHAR, @"\n\nChoose one of the following options: \n1.- Uppercase \n2.- Lowercase \n3.- Numberize \n4.- Canadianize \n5.- Respond \n6.- De-Space-It \n7.- Word Count \n8.- Remove Puntuations \n9.- Done\n\nOption: ");
                if ([stdOption intValue] == 9) { break; }
                NSLog(@"%@", getNewNSSTring(input, stdOption));
            }
        }
    }
    return 0;
}
