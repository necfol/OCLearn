//
//  NSArray+local.m
//  OCLearn
//
//  Created by necfol on 2017/7/26.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "NSArray+local.h"

@implementation NSArray (local)

-(NSString *)descriptionWithLocale:(id)locale {
    NSMutableString *str = [NSMutableString stringWithFormat:@"%lu (\n", (unsigned long)self.count];
    for (id obj in self) {
        [str appendFormat:@"\t%@, \n", obj];
    }
    
    [str appendString:@")"];
    
    return str;
}

@end
