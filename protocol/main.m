//
//  main.m
//  protocol
//
//  Created by necfol on 2017/7/24.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "ButtonListener.h"
@protocol Study;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu = [[[Student alloc] init] autorelease];
        ButtonListener *buttonListener = [[[ButtonListener alloc] init] autorelease];
        /*
        //判断是否实现了某个协议
        if([stu conformsToProtocol:@protocol(Study)]) {
            NSLog(@"遵守协议");
        }
        if(![stu respondsToSelector:@selector(test)]) {
            NSLog(@"没有实现test方法");
        }
         */
        stu.delegate = buttonListener;
        [stu click];
    }
    return 0;
}
