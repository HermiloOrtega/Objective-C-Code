//
//  Country.m
//  ClassTemplate
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-11.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import "Country.h"

@interface Country ()
    // Private properties
    @property (nonatomic) NSString *area;

    // Private methods (declarations)

@end

@implementation Country{
    // Private instance variable
    NSUInteger _infected;
}

- (instancetype)initWithNAme:(NSString *)name{
    self = [super init];
    if (self) {
        // [self setName:name] <=> self.name = name;
        _name=name;
        _area=@"NA";
    }
    return self;
}

-(void)setInfected:(NSUInteger)infected{
    _infected=infected;
}

@end
