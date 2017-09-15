//
//  AutoTextView.m
//  App
//
//  Created by Yu on 16/1/25.
//  Copyright © 2016年 HangZhou ShuoChuang Technology Co.,Ltd. All rights reserved.
//

#import "AutoTextView.h"

static const CGFloat AutoViewDefaultCornerRadius=0.0;

static const CGFloat AutoViewDefaultBorderWidth=0.0;

@interface AutoTextView ()

@property (nonatomic) UILabel *placeHolderLabel;

@end


@implementation AutoTextView

//--------------------------------------------System----------------------------------------------//

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        //self.font=Font(S_WIDTH*self.font.pointSize/XIB_WIDTH);
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:UITextViewTextDidChangeNotification object:nil];
    }
    return self;
}

- (void)prepareForInterfaceBuilder {
    [self drawView];
}

-(void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    [self drawView];
}


/**
 以下项都是添加了一个比例系数，不需要可以直接注释掉代码
 */
-(void)drawView
{
    self.layer.masksToBounds=YES;
    
    CGFloat cornerRadius=self.cornerRadius?self.cornerRadius:AutoViewDefaultCornerRadius;
    
    CGFloat borderWidth=self.borderWidth?self.borderWidth:AutoViewDefaultBorderWidth;
    
    //圆角
    if (cornerRadius>0) {
#if TARGET_INTERFACE_BUILDER
        self.layer.cornerRadius=cornerRadius;
#else
        self.layer.cornerRadius=S_WIDTH*cornerRadius/XIB_WIDTH;
#endif
    }
    
    //边框
    if (borderWidth>0) {
        self.layer.borderWidth=S_WIDTH*borderWidth/XIB_WIDTH;
    }
    
    //边框颜色
    if (self.borderColor) {
        self.layer.borderColor=[self.borderColor CGColor];
    }
    
    if (self.placeHolderLabel == nil )
    {
        self.placeHolderLabel = [[UILabel alloc] initWithFrame:CGRectMake(6,8,self.bounds.size.width,10)];
        self.placeHolderLabel.lineBreakMode = NSLineBreakByWordWrapping;
        self.placeHolderLabel.numberOfLines =0;
        self.placeHolderLabel.font = self.font;
        self.placeHolderLabel.backgroundColor = [UIColor clearColor];
        self.placeHolderLabel.textColor = [UIColor lightGrayColor];
        self.placeHolderLabel.alpha = 0;
        self.placeHolderLabel.tag = 999;
        [self addSubview:self.placeHolderLabel];
    }
    
    self.placeHolderLabel.text = self.placeholder;
    [self.placeHolderLabel sizeToFit];
    [self sendSubviewToBack:self.placeHolderLabel];
    
    if(self.text.length==0&&self.placeholder.length>0)
    {
        [[self viewWithTag:999] setAlpha:1];
    }
    
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(void)setText:(NSString *)text
{
    [super setText:text];
    [UIView animateWithDuration:0.2 animations:^{
        if(self.text.length==0)
        {
            [[self viewWithTag:999] setAlpha:1];
        }
        else
        {
            [[self viewWithTag:999] setAlpha:0];
        }
    }];
}

//--------------------------------------------Method----------------------------------------------//

- (void)textChanged:(NSNotification *)notification
{
    if(self.placeholder.length==0)
    {
        return;
    }
    
    [UIView animateWithDuration:0.2 animations:^{
        if(self.text.length==0)
        {
            [[self viewWithTag:999] setAlpha:1];
        }
        else
        {
            [[self viewWithTag:999] setAlpha:0];
        }
    }];
}

@end
