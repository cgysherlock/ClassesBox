//
//  MainTabBar.h
//  ClassBox
//
//  Created by Wrappers Zhang on 2017/9/16.
//  Copyright © 2017 sherlock. All rights reserved.
//


#import <UIKit/UIKit.h>

@protocol MainTabBarDelegate<NSObject>

- (void)centerButtonCLick;

@end

@interface MainTabBar : UITabBar

@property (nonatomic, weak)id<MainTabBarDelegate> mainTabBarDelegate;

@end
