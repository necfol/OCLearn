//
//  main.m
//  OCLearn
//
//  Created by necfol on 2017/7/22.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Student.h"
//#import "Book.h"
#import "Button.h"
typedef int (^MySum) (int, int);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
/*
        int age;
        //分配内存
        //Student *stu = [[Student alloc] init];
        Student *stu = [Student new];
        Book *book = [Book new];
        stu.age = 100;
        stu.book = book;
        [stu test3];
        NSUInteger count = [stu retainCount];
        NSLog(@"releaseCount=%lu", count);
        [stu release];
        [book release];
 */
//        Student *stu = [[Student new] autorelease];
//        [stu age];
        Button *button = [[[Button alloc] init] autorelease];
        button.listener = ^(Button *button) {
            NSLog(@"触发click");
        };
        
        [button click];
        
    }
    return 0;
}
