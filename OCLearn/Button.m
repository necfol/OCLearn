//
//  Button.m
//  OCLearn
//
//  Created by necfol on 2017/7/24.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "Button.h"

@implementation Button

- (void)click {
    _listener(self);
}

@end
