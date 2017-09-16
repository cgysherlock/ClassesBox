//
//  PublishViewController.m
//  ClassBox
//
//  Created by Wrappers Zhang on 2017/9/16.
//  Copyright © 2017 sherlock. All rights reserved.
//

#import "PublishViewController.h"
#import "View+MASAdditions.h"

@implementation PublishViewController{
    UITextField *_titleField;
    UITextView *_contentView;
    UIView *_line;
}

#pragma mark - 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNavigationBar];
    [self setUpView];
    [self setUpConstraints];
}

#pragma mark - 初始化
- (void)setUpNavigationBar {
    [self setTitle:@"发布新笔记"];
    UIBarButtonItem *leftBarButton = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(backBtnClick)];
    [leftBarButton setTintColor:[UIColor blackColor]];
    self.navigationItem.leftBarButtonItem = leftBarButton;

    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithTitle:@"发布" style:UIBarButtonItemStylePlain target:self action:@selector(rightBtnClick)];
    [rightBarButton setTintColor:[UIColor blackColor]];
    self.navigationItem.rightBarButtonItem = rightBarButton;
}

- (void)backBtnClick {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)rightBtnClick {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)setUpView {
    _titleField = [[UITextField alloc] init];
    _titleField.backgroundColor = RGB_COLOR(245, 245, 245);
    _titleField.font = [UIFont systemFontOfSize:12];
    _titleField.placeholder = @"请输入标题";
    [self.view addSubview:_titleField];

    _line = [[UIView alloc] init];
    _line.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_line];

    _contentView = [[UITextView alloc] init];
    _contentView.backgroundColor = [UIColor lightGrayColor];
    _contentView.font = [UIFont systemFontOfSize:12];
    _contentView.layer.borderWidth = 1;
    _contentView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    [self.view addSubview:_contentView];
}

- (void)setUpConstraints {
    [_titleField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(80);
        make.right.mas_equalTo(self.view.mas_right).offset(-30);
        make.left.mas_equalTo(self.view.mas_left).offset(30);
        make.height.mas_equalTo(40);
    }];

    [_line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.view.mas_right).offset(40);
        make.left.mas_equalTo(self.view.mas_left).offset(40);
        make.height.mas_equalTo(1);
        make.top.mas_equalTo(_titleField.mas_bottom);
    }];

    [_contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_titleField.mas_bottom).offset(20);
        make.right.mas_equalTo(self.view.mas_right).offset(40);
        make.left.mas_equalTo(self.view.mas_left).offset(40);
        make.height.mas_equalTo(80);
    }];
}

@end
