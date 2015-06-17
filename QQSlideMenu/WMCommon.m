//
//  WMCommon.m
//  QQSlideMenu
//
//  Created by wamaker on 15/6/17.
//  Copyright (c) 2015年 wamaker. All rights reserved.
//

#import "WMCommon.h"

@implementation WMCommon

+ (instancetype)getInstance {
    static WMCommon *common;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        common = [[WMCommon alloc] init];
    });
    
    return common;
}

@end
