//
//  ViewController.h
//  QQSlideMenu
//
//  Created by wamaker on 15/6/10.
//  Copyright (c) 2015年 wamaker. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WMCommon;
@class WMHomeViewController;
@class WMMenuViewController;
@class WMNavigationController;

typedef enum {
    stateHome = 0,
    stateMenu
}state;

static const CGFloat viewSlideHorizonRatio = 0.75;
static const CGFloat viewHeightNarrowRatio = 0.80;
static const CGFloat menuStartNarrowRatio = 0.70;

@interface ViewController : UIViewController
@property (assign, nonatomic) state   sta;              // 状态(Home or Menu)
@property (assign, nonatomic) CGFloat distance;         // 距离左边的边距
@property (assign, nonatomic) CGFloat leftDistance;
@property (assign, nonatomic) CGFloat menuCenterXStart; // menu起始中点的X
@property (assign, nonatomic) CGFloat menuCenterXEnd;   // menu缩放结束中点的X
@property (assign, nonatomic) CGFloat panStartX;        // 拖动开始的x值

@property (strong, nonatomic) WMCommon               *common;
@property (strong, nonatomic) WMHomeViewController   *homeVC;
@property (strong, nonatomic) WMMenuViewController   *menuVC;
@property (strong, nonatomic) WMNavigationController *messageNav;
@property (strong, nonatomic) UIView                 *cover;
@property (strong, nonatomic) UITabBarController     *tabBarController;

@end

