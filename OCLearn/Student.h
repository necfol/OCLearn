//
//  Student.h
//  OCLearn
//
//  Created by necfol on 2017/7/22.
//  Copyright © 2017年 Necfol. All rights reserved.
//

//@interface声明一个类
//end表示类结束
//类必须指明继承于哪个类
//成员变量定义在括号中
#import <Foundation/Foundation.h>

@class Book;
@interface Student : NSObject

@property int age;

@property (retain, nonatomic) Book *book;
@property (nonatomic, getter=isRich) BOOL rich;
@end
