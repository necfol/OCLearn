//
//  main.m
//  OCLearn
//
//  Created by necfol on 2017/7/22.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int age;
        //分配内存
        //Student *stu = [[Student alloc] init];
        Student *stu = [Student new];
        stu.age = 100;
        age = stu.age;
        NSLog(@"年龄%i", age);
        
        
    }
    return 0;
}
