//
//  BlockTester.h
//  Blocks
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-16.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlockTester : NSObject
    @property (nonatomic, copy) void(^block)(NSString *);
    -(void)runTest1;
    -(void)runTest2;
    -(void)runTest3;
    -(void)runTest4;
@end

NS_ASSUME_NONNULL_END
