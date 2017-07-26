//
//  NSArray+local.m
//  OCLearn
//
//  Created by necfol on 2017/7/26.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "NSArray+local.h"

@implementation NSArray (local)

-(NSString *)descriptionWithLocale {
    NSMutableString *str = [NSMutableString stringWithFormat:@"%lu (\n", (unsigned long)self.count];
    NSLog(@"=======%@",str);
    for (id obj in self) {
        [str appendFormat:@"\t%@, \n", obj];
    }
    
    [str appendString:@")"];
    
    return str;
}

@end
