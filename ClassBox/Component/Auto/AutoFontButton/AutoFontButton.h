//
//  AutoFontButton.h
//  App
//
//  Created by Yu on 16/1/22.
//  Copyright © 2016年 HangZhou ShuoChuang Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 
 注意：xib中的UIButton控件继承此类后可以修改圆角，边框，边框颜色,在属性选项(Attritube)中找到AutoFontButton标签设置(一般是Attritube第一个)
 注意：xib中的UIButton控件继承此类后可以自动缩放字体大小,不用在代码中重新更改
 (前提：保持xib布局宽度为 XIB_WIDTH
 
 */

IB_DESIGNABLE
@interface AutoFontButton : UIButton

@property (nonatomic) IBInspectable CGFloat cornerRadius;//圆角

@property (nonatomic) IBInspectable CGFloat borderWidth;//边框

@property (nonatomic) IBInspectable UIColor *borderColor;//边框颜色

@end
