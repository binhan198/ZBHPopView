//
//  ZBHPopView.h
//  ZBHPopView
//
//  Created by 周彬涵 on 2017/5/2.
//  Copyright © 2017年 周彬涵. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZBHPopView : UIView

@property (copy, nonatomic) void(^touchBlock)(ZBHPopView *);

- (void)setContentColor:(UIColor *)color;
- (void)showPopView;
- (void)hidePopView;

@end
