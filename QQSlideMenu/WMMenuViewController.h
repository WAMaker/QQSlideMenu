//
//  WMMenuViewController.h
//  QQSlideMenu
//
//  Created by wamaker on 15/6/12.
//  Copyright (c) 2015年 wamaker. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WMCommon;

@protocol WMMenuViewControllerDelegate <NSObject>
@optional
- (void)didSelectItem:(NSString *)title;

@end

@interface WMMenuViewController : UIViewController
@property (strong, nonatomic) WMCommon *common;
@property (strong ,nonatomic) NSArray *listArray;

@property (weak, nonatomic) id<WMMenuViewControllerDelegate> delegate;

@end
