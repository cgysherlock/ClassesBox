//
//  DiscoverViewController.m
//  ClassBox
//
//  Created by sherlock on 2017/9/16.
//  Copyright © 2017年 sherlock. All rights reserved.
//

#import "DiscoverViewController.h"

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

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, S_WIDTH, 49)];
    
    UIButton *button0 = [self createButtonWithTitle:@"班级笔记"];
    
    return view;
}

#pragma mark custom function

- (UIButton *)createButtonWithTitle:(NSString *)title {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    button.layer.borderWidth = 1.f;
    return button;
}

@end
