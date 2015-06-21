//
//  WMBaseViewController.m
//  QQSlideMenu
//
//  Created by wamaker on 15/6/22.
//  Copyright (c) 2015年 wamaker. All rights reserved.
//

#import "WMBaseViewController.h"

@implementation WMBaseViewController
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/**
 *  返回圆形图像
 *
 *  @param original 原始的ImageView，用于获取大小
 *
 *  @return 修正好的图片
 */
- (UIImage *)getRoundImage:(UIImageView *)original {
    UIGraphicsBeginImageContextWithOptions(original.frame.size, NO, 0.0);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGRect circleRect = CGRectMake(0, 0, original.frame.size.width, original.frame.size.height);
    CGContextAddEllipseInRect(ctx, circleRect);
    
    CGContextClip(ctx);
    
    [original.image drawInRect:circleRect];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

@end
