//
//  ZBHPopAdapter.m
//  ZBHPopView
//
//  Created by 周彬涵 on 2017/5/2.
//  Copyright © 2017年 周彬涵. All rights reserved.
//

#import "ZBHPopAdapter.h"
#import "ZBHPopView.h"

@implementation ZBHPopAdapter

#pragma mark - public

+ (void)setContentColor:(UIColor *)color
{
    [[self popView] setContentColor:color];
}

+ (void)setTouchBlock:(void(^)(Class<ZBHPopAdapterProtocol>))touchBlock
{
    ZBHPopView *pv = [self popView];
    pv.touchBlock = ^(ZBHPopView *pView) {
        if (touchBlock) {
            touchBlock(self);
        }
    };
}

+ (void)showPopView
{
    [[self popView] showPopView];
}

+ (void)hidePopView
{
    [[self popView] hidePopView];
}

#pragma mark - private

+ (id)popView
{
    static id s_popView = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_popView = [ZBHPopView new];
    });
    return s_popView;
}

@end
