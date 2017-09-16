//
//  DiscoverViewController.m
//  ClassBox
//
//  Created by sherlock on 2017/9/16.
//  Copyright © 2017年 sherlock. All rights reserved.
//

#import "DiscoverViewController.h"
#import "Masonry.h"

@interface DiscoverViewController ()<UISearchResultsUpdating,UISearchControllerDelegate>

@property(nonatomic) UISearchController *searchVc;

@end

@implementation DiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableFooterView = UIView.new;
    
    self.searchVc = [[UISearchController alloc] initWithSearchResultsController:nil];
    self.searchVc.searchResultsUpdater = self;
    self.searchVc.delegate = self;
    self.searchVc.searchBar.placeholder = @"搜索";
    self.tableView.tableHeaderView = self.searchVc.searchBar;
}

#pragma mark delegate

- (void)updateSearchResultsForSearchController:(UISearchController *)searchController {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    cell.textLabel.text = @"我的笔记";
    cell.imageView.image = [UIImage imageNamed:@""];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 49;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, S_WIDTH, 49)];
    
    UIButton *button0 = [self createButtonWithTitle:@"班级笔记"];
    [view addSubview:button0];
    UIButton *button1 = [self createButtonWithTitle:@"今日笔记"];
    [view addSubview:button1];
    UIButton *button2 = [self createButtonWithTitle:@"周笔记"];
    [view addSubview:button2];
    UIButton *button3 = [self createButtonWithTitle:@"月笔记"];
    [view addSubview:button3];
    
    [button0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(view);
        make.width.mas_equalTo(view).dividedBy(4);
        make.centerY.mas_equalTo(view);
        make.centerX.mas_equalTo(view).multipliedBy(0.25);
    }];
    [button1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(view);
        make.width.mas_equalTo(view).dividedBy(4);
        make.centerY.mas_equalTo(view);
        make.centerX.mas_equalTo(view).multipliedBy(0.75);
    }];
    [button2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(view);
        make.width.mas_equalTo(view).dividedBy(4);
        make.centerY.mas_equalTo(view);
        make.centerX.mas_equalTo(view).multipliedBy(1.25);
    }];
    [button3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(view);
        make.width.mas_equalTo(view).dividedBy(4);
        make.centerY.mas_equalTo(view);
        make.centerX.mas_equalTo(view).multipliedBy(1.75);
    }];
    
    return view;
}

#pragma mark custom function

- (UIButton *)createButtonWithTitle:(NSString *)title {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.layer.borderColor = [UIColor lightGrayColor].CGColor;
    button.layer.borderWidth = 1.f;
    return button;
}

@end
