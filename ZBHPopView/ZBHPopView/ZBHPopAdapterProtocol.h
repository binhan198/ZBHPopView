//
//  ZBHPopAdapterProtocol.h
//  ZBHPopView
//
//  Created by 周彬涵 on 2017/5/2.
//  Copyright © 2017年 周彬涵. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZBHPopAdapterProtocol <NSObject>

+ (void)setContentColor:(UIColor *)color;
+ (void)setTouchBlock:(void(^)(Class<ZBHPopAdapterProtocol>))touchBlock;

+ (void)showPopView;
+ (void)hidePopView;

@end
