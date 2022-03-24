//
//  main.m
//  Lab2
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-08.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc] initWithHeight:5 andWidth:4 andLength:3];
        Box *box2 = [[Box alloc] initWithHeight:3 andWidth:3 andLength:4];
        
        NSLog(@"The volume of the box 1 is: %.2f", [box1 calculateVolume]);
        NSLog(@"The volume of the box 2 is: %.2f", [box2 calculateVolume]);
        
        float fitBox = [box1 fitBoxes: box2];
        if (fitBox > 1) {
            NSLog(@"The Box #1 fit %.2f times in the Box #2", fitBox);
        } else {
            NSLog(@"The Box #2 fit %.2f times in the Box #1", [box2 fitBoxes: box1]);
        }
    }
    return 0;
}
