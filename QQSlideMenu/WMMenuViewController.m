//
//  WMMenuViewController.m
//  QQSlideMenu
//
//  Created by wamaker on 15/6/12.
//  Copyright (c) 2015年 wamaker. All rights reserved.
//

#import "WMMenuViewController.h"
#import "WMMenuTableViewCell.h"
#import "WMCommon.h"
#import "UIImage+WM.h"

@interface WMMenuViewController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) WMCommon *common;
@property (strong ,nonatomic) NSArray  *listArray;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton    *nightModeBtn;
@property (weak, nonatomic) IBOutlet UIButton    *settingBtn;
@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;

- (IBAction)btnClick:(id)sender;

@end

@implementation WMMenuViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.common = [WMCommon getInstance];
    
    self.listArray = @[@"开通会员", @"QQ钱包", @"网上营业厅", @"个性装扮", @"我的收藏", @"我的相册", @"我的文件"];
    
    self.tableView.delegate        = self;
    self.tableView.dataSource      = self;
    self.tableView.separatorStyle  = UITableViewCellSeparatorStyleNone;
    self.tableView.rowHeight       = 44 * (self.common.screenW / 320);
    // 设置tableFooterView为一个空的View，这样就不会显示多余的空白格子了
    self.tableView.tableFooterView = [[UIView alloc] init];
    
    self.headerImageView.image = [[UIImage imageNamed:@"me"] getRoundImage];
}

- (void)btnClick:(id)sender {
    if (sender == self.nightModeBtn) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"使用提示" message:@"要使用夜间模式需下载主题包，立即下载？" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"立即下载", nil];
        [alertView show];
    } else {
        if ([self.delegate respondsToSelector:@selector(didSelectItem:)]) {
            [self.delegate didSelectItem:self.settingBtn.titleLabel.text];
        }
    }
}

#pragma mark - tableView代理方法及数据源方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 没有用系统自带的类而用了自己重新定义的cell，仅仅为了之后扩展方便，无他
    WMMenuTableViewCell *cell = [WMMenuTableViewCell cellWithTableView:tableView];
    [cell setCellText:self.listArray[indexPath.row]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if ([self.delegate respondsToSelector:@selector(didSelectItem:)]) {
        [self.delegate didSelectItem:self.listArray[indexPath.row]];
    }
}

@end
