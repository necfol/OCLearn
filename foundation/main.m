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
    
    NSString *path = @"/Users/scofield/Desktop/test.txt";
    NSError *err = nil;
    //不用释放计数器，因为是调用的静态方法
    NSString *str3 = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&err];
    if(err) {
        NSLog(@"读取文件失败%@", err);
    } else {
        NSLog(@"文件读取内容%@", str3);
    }
    NSError * err1;
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    NSString *str4 = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&err1];
    if(err1) {
        NSLog(@"读取url文件失败%@", err1);
    } else {
        NSLog(@"url文件读取内容%@", str4);
    }
    
    //写文件
    NSString *str5 = @"新文件内容";
    NSString *path1 = @"/Users/scofield/Desktop/test.txt";
    NSError * err2 = nil;
    [str5 writeToFile:path1 atomically:YES encoding:NSUTF8StringEncoding error:&err2];
    if(err2) {
        NSLog(@"写入文件失败%@", err2);
    } else {
        NSLog(@"文件写入成功");
    }
    
}

void testStrFunc(NSString **str);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        stringCreat();
        NSString *teststr = @"111111";
        testStrFunc(&teststr);
        NSLog(@"teststr=%@", teststr);
    }
    return 0;
}

void testStrFunc(NSString **str) {
    *str = @"222222";
}
