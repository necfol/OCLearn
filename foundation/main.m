//
//  main.m
//  foundation
//
//  Created by necfol on 2017/7/24.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark NSString创建

void stringCreat() {
    
    NSString *str = [[NSString alloc] initWithCString:"我是房星星" encoding:4];
    NSLog(@"ddd%@", str);
    [str release];
    //动态方法
    NSString *str1 = [[NSString alloc] initWithFormat:@"我的名字是房星星，我的年龄是%i", 25];
    NSLog(@"str1=%@", str1);
    [str1 release];
    
    //静态方法,即调用类方法
    NSString *str2 = [NSString stringWithUTF8String:"我是房星星"];
    NSLog(@"str2=%@", str2);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        stringCreat();
    }
    return 0;
}
