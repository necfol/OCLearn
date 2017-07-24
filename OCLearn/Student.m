//
//  Student.m
//  OCLearn
//
//  Created by necfol on 2017/7/22.
//  Copyright © 2017年 Necfol. All rights reserved.
//
#import "Student.h"
#import "Book.h"
@implementation Student
#pragma mark 年龄getter
- (int)age {
    return _age * 100;
}

#pragma mark 回收
- (void)dealloc
{
    NSLog(@"%@对象被销毁了", self);
    [_book release];
    [super dealloc];
}
@end
