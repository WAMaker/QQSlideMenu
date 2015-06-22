//
//  WMOtherViewController.m
//  QQSlideMenu
//
//  Created by wamaker on 15/6/14.
//  Copyright (c) 2015年 wamaker. All rights reserved.
//

#import "WMOtherViewController.h"

@interface WMOtherViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation WMOtherViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = self.navTitle;
    self.navigationItem.title = self.navTitle;
}

@end
