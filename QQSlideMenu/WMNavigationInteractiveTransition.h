//
//  NavigationInteractiveTransition.h
//  QQSlideMenu
//
//  Created by wamaker on 15/6/15.
//  Copyright (c) 2015年 wamaker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class UIViewController, UIPercentDrivenInteractiveTransition;

@interface WMNavigationInteractiveTransition : NSObject <UINavigationControllerDelegate>
- (instancetype)initWithViewController:(UIViewController *)vc;
- (void)handleControllerPop:(UIPanGestureRecognizer *)recognizer;
- (UIPercentDrivenInteractiveTransition *)interactivePopTransition;

@end
