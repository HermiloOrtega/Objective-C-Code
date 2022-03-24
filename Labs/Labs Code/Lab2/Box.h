//
//  Box.h
//  Lab2
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-09.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

@interface Box : NSObject
    @property (nonatomic) float height;
    @property (nonatomic) float width;
    @property (nonatomic) float length;
    
- (instancetype)initWithHeight: (float) height andWidth: (float) width andLength: (float) length;

- (float) calculateVolume;

- (float) fitBoxes: (Box *) anotherBox;

@end
