//
//  ButtonListener.m
//  OCLearn
//
//  Created by necfol on 2017/7/24.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "ButtonListener.h"
#import "Study.h"
@implementation ButtonListener

- (void)onclick {
    NSLog(@"click");
}
-(void)dealloc {
    NSLog(@"btn销毁");
    [super dealloc];
}
@end
