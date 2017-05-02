//
//  ZBHCommon.m
//  ZBHPopView
//
//  Created by 周彬涵 on 2017/5/2.
//  Copyright © 2017年 周彬涵. All rights reserved.
//

#import "ZBHCommon.h"

@implementation ZBHCommon

+ (NSInteger)screenWidth
{
    static NSInteger s_screenWidth = 0;
    if (0 == s_screenWidth) {
        CGRect screenFrame = [UIScreen mainScreen].bounds;
        s_screenWidth = screenFrame.size.width;
    }
    return s_screenWidth;
}

+ (NSInteger)screenHeight
{
    static NSInteger s_screenHeight = 0;
    if (0 == s_screenHeight) {
        CGRect screenFrame = [UIScreen mainScreen].bounds;
        s_screenHeight = screenFrame.size.height;
    }
    return s_screenHeight;
}

+ (NSInteger)statusBarHeight
{
    CGRect statusBarFrame = [UIApplication sharedApplication].statusBarFrame;
    NSInteger s_statusBarHeight = MIN(statusBarFrame.size.width, statusBarFrame.size.height);
    return s_statusBarHeight;
}

@end
