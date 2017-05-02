//
//  ZBHCommon.h
//  ZBHPopView
//
//  Created by 周彬涵 on 2017/5/2.
//  Copyright © 2017年 周彬涵. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SCREEN_WIDTH        [ZBHCommon screenWidth]
#define SCREEN_HEIGHT       [ZBHCommon screenHeight]

#define STATUSBAR_HEIGHT    [ZBHCommon statusBarHeight]

#define NAVIGATIONBAR_HEIGHT 44

@interface ZBHCommon : NSObject

+ (NSInteger)screenWidth;
+ (NSInteger)screenHeight;

+ (NSInteger)statusBarHeight;

@end
