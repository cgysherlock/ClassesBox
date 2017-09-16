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
#import "TimeTableViewController.h"
#import "DiscoverViewController.h"
#import "BaseNavigationController.h"
#import "MainTabBar.h"
#import "PublishViewController.h"

@interface MainTabBarViewController ()<MainTabBarDelegate>

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MainTabBar *tabBar = [[MainTabBar alloc] init];
    tabBar.mainTabBarDelegate = self;
    [self setValue:tabBar forKey:@"tabBar"];

    TimeTableViewController *ttVc = [[TimeTableViewController alloc] init];
    [ttVc setTitle:@"课表"];
    [self initTabBarItem:ttVc.tabBarItem Title:@"课表" SelectedImage:@"tabBar_essence_icon" UnselectedImage:@"tabBar_essence_click_icon"];
    BaseNavigationController *baseVC1 = [[BaseNavigationController alloc] initWithRootViewController:ttVc];

    DiscoverViewController *dVc = [[DiscoverViewController alloc] init];
    [dVc setTitle:@"发现"];
    [self initTabBarItem:dVc.tabBarItem Title:@"发现" SelectedImage:@"tabBar_friendTrends_icon" UnselectedImage:@"tabBar_friendTrends_click_icon"];
    BaseNavigationController *bassVc2 = [[BaseNavigationController alloc] initWithRootViewController:dVc];

    MeViewController *mvc = [[MeViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [mvc setTitle:@"信息"];
    [self initTabBarItem:mvc.tabBarItem Title:@"消息" SelectedImage:@"tabBar_new_icon" UnselectedImage:@"tabBar_new_click_icon"];
    BaseNavigationController *basevc3 = [[BaseNavigationController alloc] initWithRootViewController:mvc];
    
    MessageViewController *msgvc = [[MessageViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [msgvc setTitle:@"我"];
    [self initTabBarItem:msgvc.tabBarItem Title:@"我" SelectedImage:@"tabBar_me_icon" UnselectedImage:@"tabBar_me_click_icon"];
    BaseNavigationController *basevc4 = [[BaseNavigationController alloc] initWithRootViewController:msgvc];
    
    self.viewControllers = @[baseVC1,bassVc2,basevc3,basevc4];
}

- (void)initTabBarItem:(UITabBarItem *)tabBarItem Title:(NSString*)title SelectedImage:(NSString*)selectedImage UnselectedImage:(NSString*)unselectedImage {
    [tabBarItem setTitle:title];
    
    [tabBarItem setImage:[[UIImage imageNamed:unselectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];//设置未选中时的图片
    
    [tabBarItem setSelectedImage:[[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];//设置选中时的图片
    [tabBarItem setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:TABBER_TITLE_FONT], NSForegroundColorAttributeName: RGB(0x46, 0x46, 0x46, 1)} forState:UIControlStateNormal];//设置未选中时的字体大小和颜色
    [tabBarItem                                                                                 setTitleTextAttributes:@{NSFontAttributeName:
            [UIFont systemFontOfSize:TABBER_TITLE_FONT], NSForegroundColorAttributeName: RGB(64, 64, 64, 1)} forState:UIControlStateSelected];//设置选中时的字体大小和颜色
}


#pragma mark - MainTabBarDelegate
- (void)centerButtonCLick {
    PublishViewController *publishVC = [[PublishViewController alloc] init];
    [self presentViewController:publishVC animated:YES completion:nil];
}
@end
