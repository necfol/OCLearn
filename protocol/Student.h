//
//  Student.h
//  OCLearn
//
//  Created by necfol on 2017/7/24.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Study, Learn;

@interface Student : NSObject <Study, Learn>

@property (nonatomic, retain) id<Study> delegate;

- (void)click;
@end

