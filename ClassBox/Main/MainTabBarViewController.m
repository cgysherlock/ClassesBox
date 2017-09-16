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
#import "BaseNavigationController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MeViewController *mvc = [[MeViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [self initTabBarItem:mvc.tabBarItem Title:@"消息" SelectedImage:@"" UnselectedImage:@""];
    BaseNavigationController *basevc3 = [[BaseNavigationController alloc] initWithRootViewController:mvc];
    
    MessageViewController *msgvc = [[MessageViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [self initTabBarItem:msgvc.tabBarItem Title:@"我" SelectedImage:@"" UnselectedImage:@""];
    BaseNavigationController *basevc4 = [[BaseNavigationController alloc] initWithRootViewController:msgvc];
    
    self.viewControllers = @[basevc3,basevc4];
}

- (void)initTabBarItem:(UITabBarItem *)tabBarItem Title:(NSString*)title SelectedImage:(NSString*)selectedImage UnselectedImage:(NSString*)unselectedImage {
    [tabBarItem setTitle:title];
    
    [tabBarItem setImage:[[UIImage imageNamed:unselectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];//设置未选中时的图片
    
    [tabBarItem setSelectedImage:[[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];//设置选中时的图片
    [tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                        [UIFont systemFontOfSize:TABBER_TITLE_FONT], NSFontAttributeName,RGB(0x46, 0x46, 0x46, 1),NSForegroundColorAttributeName,
                                        nil] forState:UIControlStateNormal];//设置未选中时的字体大小和颜色
    [tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                        [UIFont systemFontOfSize:TABBER_TITLE_FONT],
                                        NSFontAttributeName,[UIColor blueColor],NSForegroundColorAttributeName,
                                        nil] forState:UIControlStateSelected];//设置选中时的字体大小和颜色
}

@end
