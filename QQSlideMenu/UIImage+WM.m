//
//  UIImage+WM.m
//  QQSlideMenu
//
//  Created by wamaker on 15/6/22.
//  Copyright (c) 2015年 wamaker. All rights reserved.
//

#import "UIImage+WM.h"

@implementation UIImage (WM)
/**
 *  返回圆形图像, 若图像不为正方形，则截取中央正方形
 *
 *  @param original 原始的ImageView，用于获取大小
 *
 *  @return 修正好的图片
 */
- (instancetype)getRoundImage {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGFloat compare = self.size.width - self.size.height;
    CGFloat circleW, circleX, circleY;
    if (compare > 0) {
        circleW = self.size.height;
        circleY = 0;
        circleX = (self.size.width - circleW) / 2.0;
    } else if (compare == 0) {
        circleW = self.size.width;
        circleX = circleY = 0;
    } else {
        circleW = self.size.width;
        circleX = 0;
        circleY = (self.size.height - circleW) / 2.0;
    }
    CGRect circleRect = CGRectMake(circleX, circleY, circleW, circleW);
    CGContextAddEllipseInRect(ctx, circleRect);
    CGContextClip(ctx);
    
    [self drawInRect:circleRect];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

@end
