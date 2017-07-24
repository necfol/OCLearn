//
//  main.m
//  OCLearn
//
//  Created by necfol on 2017/7/22.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Book.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int age;
        //分配内存
        //Student *stu = [[Student alloc] init];
        Student *stu = [Student new];
        Book *book = [Book new];
        stu.age = 100;
        stu.book = book;
        NSUInteger count = [stu retainCount];
        NSLog(@"releaseCount=%lu", count);
        [stu release];
        [book release];
        
    }
    return 0;
}
