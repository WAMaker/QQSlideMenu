//
//  WMHomeViewController.m
//  QQSlideMenu
//
//  Created by wamaker on 15/6/10.
//  Copyright (c) 2015年 wamaker. All rights reserved.
//

#import "WMHomeViewController.h"
#import "UIImage+WM.h"

@implementation WMHomeViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.backBarButtonItem.title = @"返回";
    
    NSArray *segArray = [NSArray arrayWithObjects:@"消息", @"电话", nil];
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:segArray];
    segmentedControl.selectedSegmentIndex = 0;
    [segmentedControl setWidth:60 forSegmentAtIndex:0];
    [segmentedControl setWidth:60 forSegmentAtIndex:1];
    self.navigationItem.titleView = segmentedControl;
    
    UIImageView *original = [[UIImageView alloc] init];
    original.frame = CGRectMake(0, 0, 33, 33);
    original.image = [UIImage imageNamed:@"me"];
    
    self.leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.leftBtn.frame = CGRectMake(0, 0, 33, 33);
    [self.leftBtn addTarget:self action:@selector(clicked) forControlEvents:UIControlEventTouchUpInside];
    [self.leftBtn setImage:[[UIImage imageNamed:@"me"] getRoundImage] forState:UIControlStateNormal];
    UIBarButtonItem *barLeftBtn = [[UIBarButtonItem alloc]initWithCustomView:self.leftBtn];
    [self.navigationItem setLeftBarButtonItem:barLeftBtn];
}

- (void)clicked {
    if ([self.delegate respondsToSelector:@selector(leftBtnClicked)]) {
        [self.delegate leftBtnClicked];
    }
}

@end
