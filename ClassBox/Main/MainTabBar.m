//
//  MainTabBar.m
//  ClassBox
//
//  Created by Wrappers Zhang on 2017/9/16.
//  Copyright © 2017 sherlock. All rights reserved.
//

#import "MainTabBar.h"
#import "View+MASAdditions.h"

@implementation MainTabBar

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIButton *composeButton = [[UIButton alloc] init];
        [composeButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [composeButton addTarget:self action:@selector(centerButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [composeButton sizeToFit];
        [self addSubview:composeButton];
        [composeButton mas_makeConstraints:^(MASConstraintMaker *make) {
           make.center.mas_equalTo(self);
        }];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    for (int i = 0; i < self.subviews.count; ++i) {
        if (i > 1) {
            CGRect frame = self.subviews[i].frame;
            switch (i) {
                case 2:{
                    frame.origin.x -=10;
                    break;
                }
                case 3:{
                    frame.origin.x -= 30;
                    break;
                }
                case 4:{
                    frame.origin.x += 30;
                    break;
                }
                case 5:{
                    frame.origin.x += 10;
                    break;
                }
                default:
                    break;
            }

            self.subviews[i].frame = frame;
        }
    }
}

- (void)centerButtonClick {
    if (_mainTabBarDelegate){
        [_mainTabBarDelegate centerButtonCLick];
    }
}
@end
