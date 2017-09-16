//
//  MessageViewController.m
//  ClassBox
//
//  Created by sherlock on 2017/9/15.
//  Copyright © 2017年 sherlock. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

#pragma mark system function

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.separatorInset = UIEdgeInsetsZero;
}

#pragma mark delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    if (indexPath.row == 0) {
        cell.textLabel.text = @"我的评论";
        cell.imageView.image = [UIImage imageNamed:@""];
    } else if (indexPath.row == 1) {
        cell.textLabel.text = @"我的赞";
        cell.imageView.image = [UIImage imageNamed:@""];
    } else if (indexPath.row == 2) {
        cell.textLabel.text = @"我的转发";
        cell.imageView.image = [UIImage imageNamed:@""];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
