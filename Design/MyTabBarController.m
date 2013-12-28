//
//  MyTabBarController.m
//  Design
//
//  Created by Lienne Nguyen on 12/19/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import "MyTabBarController.h"

@implementation MyTabBarController

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (UIViewController *)childViewControllerForStatusBarStyle
{
    return nil;
}

@end
