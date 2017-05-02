//
//  ZBHPopView.m
//  ZBHPopView
//
//  Created by 周彬涵 on 2017/5/2.
//  Copyright © 2017年 周彬涵. All rights reserved.
//

#import "ZBHPopView.h"
#import "ZBHCommon.h"

@interface ZBHPopView ()
@property (nonatomic, strong) UIView *contentView;
@end

@implementation ZBHPopView

#pragma mark - life circle

- (instancetype)init
{
    if (self = [super initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)]) {
        [self configView];
        [self configNotification];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.contentView.frame = CGRectMake(0, STATUSBAR_HEIGHT + NAVIGATIONBAR_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT - STATUSBAR_HEIGHT - NAVIGATIONBAR_HEIGHT);
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - config

- (void)configView
{
    self.backgroundColor = [UIColor clearColor];
    [self addSubview:self.contentView];
}

- (void)configNotification
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(statusBarFrameChanged:)
                                                 name:UIApplicationWillChangeStatusBarFrameNotification
                                               object:nil];
}

#pragma mark - public

- (void)setContentColor:(UIColor *)color
{
    self.contentView.backgroundColor = color;
}

- (void)showPopView
{
    if([self superview])
        return;
    
    self.alpha = 0;
    [[self topView] addSubview:self];
    [UIView animateWithDuration:0.2 animations:^{
        self.alpha = 1;
    }];
}
- (void)hidePopView
{
    if(![self superview])
        return;
    
    self.alpha = 1;
    [UIView animateWithDuration:0.2 animations:^{
        self.alpha = 0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

#pragma mark - private

- (void)statusBarFrameChanged:(NSNotification *)noti
{
    [self setNeedsLayout];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(self.touchBlock) {
        self.touchBlock(self);
    }
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {}
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {}

- (UIView *)topView
{
    UIWindow *window = [[UIApplication sharedApplication].delegate window];
    return  window;
}

#pragma mark - getter & setter

- (UIView *)contentView
{
    if (!_contentView) {
        _contentView = [UIView new];
        _contentView.backgroundColor = [UIColor clearColor];
    }
    return _contentView;
}

@end
