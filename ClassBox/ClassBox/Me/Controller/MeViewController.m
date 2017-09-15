//
//  MeViewController.m
//  ClassBox
//
//  Created by sherlock on 2017/9/15.
//  Copyright © 2017年 sherlock. All rights reserved.
//

#import "MeViewController.h"

@interface MeViewController ()

@end

@implementation MeViewController

#pragma mark system function

- (void)viewDidLoad {
    [super viewDidLoad];
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
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
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

@end
