//
//  Box.m
//  Lab2
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-09.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

@implementation Box

- (instancetype)initWithHeight: (float) height andWidth: (float) width andLength: (float) length{
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
        _length = length;
    }
    return self;
}

- (float) calculateVolume{
    return  self.height *
            self.width *
            self.length;
}

- (float) fitBoxes: (Box *) anotherBox {
    return [anotherBox calculateVolume] / self.calculateVolume;
}


@end
