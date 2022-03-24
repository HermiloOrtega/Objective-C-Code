//
//  main.m
//  Pointers
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-14.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct node {
  int data; // 4
  char firstname[10]; // 10
  struct node *next; // 8
} node;

// Pointer?
    // - "variable that stores memory address"

int sum(int *arr, int size) {
  int result = 0;
  for (int i = 0; i < size; i++) {
    result += arr[i];
  }
  return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int var1;
        char var2[10];
        
        NSLog(@"Address of var1 variable: %p\n", &var1); // &: memory address of
        NSLog(@"Address of var2 variable: %p\n", &var2);
        NSLog(@"Address of var2 variable: %p\n", var2);
        
        char *pt = var2;
        NSLog(@"Address of pt variable: %p\n", pt);
        
        int x = 20;
        int *ip = &x;
        NSLog(@"Address of x variable: %p\n", ip);
        
        int *ptr = NULL;
        NSLog(@"Address of ptr variable: %p\n", ptr);
        
        if (ptr) { // to check for a null pointer
        }
        
        int scores[5] = {90, 70, 100, 0, 0};
        NSLog(@"sum(scores) = %d", sum(scores, 5));
        
        node *my_node = malloc(sizeof(struct node));
        (*my_node).data = 10;
        my_node->data = 10;
        free(my_node);

    //    node next_node;
    //    my_node.next = &next_node;
    //
    //    printf("%lu\n", sizeof(my_node));
        
        
    //    NSLog(@"sizeof(scores) = %lu, sizeof(int) = %lu", sizeof(scores), sizeof(int));
        
    //    NSLog(@"scores[0] = %d", scores[0]);
    //    NSLog(@"scores[1] = %d", scores[1]);
    //    NSLog(@"scores[2] = %d", scores[2]);
    //
    //    int *s_ptr = scores;
    //    NSLog(@"Address of s_ptr variable: %p\n", s_ptr);
    //    s_ptr++;
    //    s_ptr++;
    //    s_ptr++;
    //    s_ptr++;
    //    s_ptr++;
    //    s_ptr++;
    //    s_ptr++;
    //    s_ptr++;
    //    NSLog(@"Address of s_ptr variable: %p\n", s_ptr);
    //    NSLog(@"The content of s_ptr variable: %d\n", *s_ptr);
    //    NSLog(@"scores[0] = %d", *s_ptr); // *: content of (dereferencing operator)
    //    NSLog(@"scores[1] = %d", *(s_ptr + 1));
    //    NSLog(@"scores[2] = %d", *(s_ptr + 2));

    }
    return 0;
}
