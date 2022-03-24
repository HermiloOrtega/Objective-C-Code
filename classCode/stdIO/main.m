//
//  main.m
//  StdIO
//
//  Created by Derrick Park on 6/8/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(int maxLength, NSString *prompt) {
  if (maxLength < 1) {
    maxLength = 255;
  }
  NSLog(@"%@ ", prompt);
  char inputChars[maxLength];
  char *result = fgets(inputChars, maxLength, stdin);
  if (result != NULL) {
    return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  }
  return NULL;
}


int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // insert code here...
//    NSLog(@"Hello, World!"); // Obj
//
//    int year = 2020;
//    printf("Hello, World %d\n", year); // c - output
//
//    int month;
//    int day;
//    // &: mem address of
//    scanf("%d/%d", &month, &day); // c - input
//    printf("year: %d, month: %d, day: %d\n", year, month, day);
    
//    char inputChars[255];
//    char *result = fgets(inputChars, 255, stdin);
//    if (result != NULL) {
//      printf("input: %s\n", result);
//
//      NSString *objcStr = [NSString stringWithUTF8String: inputChars];
//      NSString *trimmed = [objcStr stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
//      NSLog(@"objcStr: %@, length: %lu\n", trimmed, [trimmed length]);
//    }
    
//    unsigned long length = strlen(result);
//    printf("length: %lu\n", length);
    
    
    NSString *input = getUserInput(16, @"Enter your name:");
    NSLog(@"input was: %@", [input uppercaseString]);
  }
  return 0;
}
