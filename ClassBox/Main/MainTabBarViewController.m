//
//  MainTabBarViewController.m
//  ClassBox
//
//  Created by sherlock on 2017/9/14.
//  Copyright © 2017年 sherlock. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "MeViewController.h"
#import "MessageViewController.h"
#import "DiscoverViewController.h"
#import "BaseNavigationController.h"
#import "DiscoverViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DiscoverViewController *dvc = [[DiscoverViewController alloc] initWithStyle:UITableViewStylePlain];
    [self initTabBarItem:dvc.tabBarItem Title:@"发现" SelectedImage:@"" UnselectedImage:@""];
    dvc.title = @"发现";
    BaseNavigationController *basevc2 = [[BaseNavigationController alloc] initWithRootViewController:dvc];
    
    MessageViewController *msgvc = [[MessageViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [self initTabBarItem:msgvc.tabBarItem Title:@"消息" SelectedImage:@"" UnselectedImage:@""];
    msgvc.title = @"消息";
    BaseNavigationController *basevc3 = [[BaseNavigationController alloc] initWithRootViewController:msgvc];
    
    MeViewController *mvc = [[MeViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [self initTabBarItem:mvc.tabBarItem Title:@"我" SelectedImage:@"" UnselectedImage:@""];
    mvc.title = @"我";
    BaseNavigationController *basevc4 = [[BaseNavigationController alloc] initWithRootViewController:mvc];
    
    self.viewControllers = @[basevc2,basevc3,basevc4];
}

- (void)initTabBarItem:(UITabBarItem *)tabBarItem Title:(NSString*)title SelectedImage:(NSString*)selectedImage UnselectedImage:(NSString*)unselectedImage {
    [tabBarItem setTitle:title];
    
    [tabBarItem setImage:[[UIImage imageNamed:unselectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];//设置未选中时的图片
    
    [tabBarItem setSelectedImage:[[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];//设置选中时的图片
    [tabBarItem setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:TABBER_TITLE_FONT], NSForegroundColorAttributeName: RGB(0x46, 0x46, 0x46, 1)} forState:UIControlStateNormal];//设置未选中时的字体大小和颜色
    [tabBarItem                                                                                 setTitleTextAttributes:@{NSFontAttributeName:
            [UIFont systemFontOfSize:TABBER_TITLE_FONT], NSForegroundColorAttributeName: RGB(64, 64, 64, 1)} forState:UIControlStateSelected];//设置选中时的字体大小和颜色
}

@end
