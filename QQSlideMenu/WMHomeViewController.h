//
//  WMHomeViewController.h
//  QQSlideMenu
//
//  Created by wamaker on 15/6/10.
//  Copyright (c) 2015年 wamaker. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WMHomeViewControllerDelegate <NSObject>
@optional
- (void)leftBtnClicked;

@end

@interface WMHomeViewController : UIViewController
@property (weak, nonatomic) UIButton *leftBtn;
@property (weak, nonatomic) id<WMHomeViewControllerDelegate> delegate;

@end
