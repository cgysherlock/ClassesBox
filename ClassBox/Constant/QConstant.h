//
//  QConstant.h
//  App
//
//  Created by Yu on 15/12/1.
//  Copyright © 2015年 HangZhou ShuoChuang Technology Co.,Ltd. All rights reserved.
//
#import <Foundation/Foundation.h>
///常量类
@interface QConstant : NSObject

//----------------------------------------------服务器地址
///服务器地址
#define SERVER_URL @""

//----------------------------------------------常用参数
///主色调

//#define MAIN_TONE_COLOR RGB(0x94, 0xc6, 0x15, 1)

///导航栏背景颜色

//#define BAR_TINT_COLOR RGB(0x94, 0xc6, 0x15, 1)

///导航栏按钮颜色
#define BAR_BTN_COLOR ([UIColor whiteColor])

///xib布局的界面宽度(默认ipone7)
#define XIB_WIDTH 375

///屏幕高度(除去状态栏和导航栏)
#define WORK_S_HEIGHT (S_HEIGHT-64)

///tabbar高度
#define TABBAR_HEIGHT 49

///nav_bar文字大小
#define NAVBER_TITLE_FONT 18

///tabbar文字大小
#define TABBER_TITLE_FONT 12

//----------------------------------------------常用方法

///设置字体大小
#define Font(f) [UIFont systemFontOfSize:f]

///设置颜色
#define RGB(r, g, b, f) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:f/1.0f]
#define RGB_COLOR(r, g, b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1/1.0f]

//----------------------------------------------判断设备
///是否是pad
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

///是否是ipone
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

///是否是retina屏
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)


//----------------------------------------------屏幕尺寸
///屏幕宽度
#define S_WIDTH ([[UIScreen mainScreen] bounds].size.width)

///屏幕高度
#define S_HEIGHT ([[UIScreen mainScreen] bounds].size.height)

///屏幕最大长度
#define SCREEN_MAX_LENGTH (MAX(S_WIDTH, S_HEIGHT))

///屏幕最小长度
#define SCREEN_MIN_LENGTH (MIN(S_WIDTH, S_HEIGHT))

///3.5英寸
#define IS_IPHONE_3_5 (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)

///4.0英寸
#define IS_IPHONE_4_0 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)

///4.7英寸
#define IS_IPHONE_4_7 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)

///5.5英寸
#define IS_IPHONE_5_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)



@end
