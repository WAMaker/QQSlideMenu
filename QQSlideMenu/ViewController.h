//
//  ViewController.h
//  QQSlideMenu
//
//  Created by wamaker on 15/6/10.
//  Copyright (c) 2015年 wamaker. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WMHomeViewController;
@class WMMenuViewController;
@class WMNavigationController;

typedef enum {
    stateHome = 0,
    stateMenu
}state;

static const CGFloat slideWRatio = 0.75;
static const CGFloat slideHRatio = 0.80;
static const CGFloat menuNarrowRatio = 0.70;

@interface ViewController : UIViewController
@property (assign, nonatomic) state sta;                // 状态(Home or Menu)
@property (assign, nonatomic) CGFloat screenW;          // 屏幕宽度
@property (assign, nonatomic) CGFloat screenH;          // 屏幕高度
@property (assign, nonatomic) CGFloat distance;         // 距离左边的边距
@property (assign, nonatomic) CGFloat menuCenterXStart; // menu起始中点的X
@property (assign, nonatomic) CGFloat menuCenterXEnd;   // menu缩放结束中点的X

@property (strong, nonatomic) WMHomeViewController *homeVC;
@property (strong, nonatomic) WMMenuViewController *menuVC;
@property (strong, nonatomic) UIView *cover;
//@property (strong, nonatomic) UINavigationController *messageNav;
@property (strong, nonatomic) WMNavigationController *messageNav;
@property (strong, nonatomic) UITabBarController *tabBarController;

@end

