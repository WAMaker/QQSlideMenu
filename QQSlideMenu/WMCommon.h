//
//  WMCommon.h
//  QQSlideMenu
//
//  Created by wamaker on 15/6/17.
//  Copyright (c) 2015年 wamaker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WMCommon : NSObject
@property (assign, nonatomic) CGFloat screenW;          // 屏幕宽度
@property (assign, nonatomic) CGFloat screenH;          // 屏幕高度

//@property (assign, nonatomic) CGFloat menuSlideWRatio;
//@property (assign, nonatomic) CGFloat menuNarrowRatio;
//@property (assign, nonatomic) CGFloat viewHeightNarrowRatio;

+ (instancetype)getInstance;

@end
