//
//  Button.h
//  OCLearn
//
//  Created by necfol on 2017/7/24.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Button;

typedef void (^ButtonBlock) (Button *);

@interface Button : NSObject

@property (nonatomic, assign) ButtonBlock listener;

- (void) click;
@end
