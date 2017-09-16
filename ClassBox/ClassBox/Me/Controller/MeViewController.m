//
//  MeViewController.m
//  ClassBox
//
//  Created by sherlock on 2017/9/15.
//  Copyright © 2017年 sherlock. All rights reserved.
//

#import "MeViewController.h"
#import "MeHeadTableViewCell.h"
#import "Masonry.h"

@interface MeViewController ()

@end

@implementation MeViewController

#pragma mark system function

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableFooterView = [self createFooterView];
    self.tableView.separatorInset = UIEdgeInsetsZero;
}

#pragma mark delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    } else if (section == 1) {
        return 4;
    } else if (section == 2) {
        return 1;
    }
    return 0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 100;
    } else {
        return 44;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    if (section == 0) {
        MeHeadTableViewCell * cell=[[NSBundle mainBundle] loadNibNamed:@"MeHeadTableViewCell" owner:self options:nil].lastObject;
        return cell;
    }else if(section == 1) {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        if (row == 0) {
            cell.textLabel.text = @"我的笔记";
            cell.imageView.image = [UIImage imageNamed:@""];
        } else if (row == 1) {
            cell.textLabel.text = @"关于我们";
            cell.imageView.image = [UIImage imageNamed:@""];
        } else if (row == 2) {
            cell.textLabel.text = @"我的关注";
            cell.imageView.image = [UIImage imageNamed:@""];
            cell.detailTextLabel.text = @"10";
        } else if (row == 3) {
            cell.textLabel.text = @"我的粉丝";
            cell.imageView.image = [UIImage imageNamed:@""];
            cell.detailTextLabel.text = @"10";
        }
        return cell;
    }else if (section == 2) {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        cell.textLabel.text = @"设置";
        cell.imageView.image = [UIImage imageNamed:@""];
        return cell;
    } else {
        return nil;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (UIView *)createFooterView {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"退出登录" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button.layer.borderWidth = 1.0f;
    button.layer.cornerRadius = 5.0f;
    button.layer.borderColor = [UIColor redColor].CGColor;
    button.titleLabel.font = [UIFont systemFontOfSize:16];
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, S_WIDTH, 64)];
    [footerView addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.insets(UIEdgeInsetsMake(0, 20, 0, 20));
    }];
    return footerView;
}

@end
