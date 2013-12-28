//
//  MyNavigationController.m
//  Design
//
//  Created by Lienne Nguyen on 12/19/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#define UIColorFromRGB(rgbValue, alphaValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:0.5]

#import "MyNavigationController.h"

@implementation MyNavigationController

//- (UIStatusBarStyle)preferredStatusBarStyle
//{
//    return UIStatusBarStyleLightContent;
//    
//}

- (void) viewDidLoad

{
    [super viewDidLoad];
    
    [self setCustomStyle];

    
}

- (void) viewDidAppear:(BOOL)animated
{
    
    [self setCustomStyle];
}
- (void) setCustomStyle {
    //UIColor *barColour = [UIColor colorWithRed:73.0/255.0f green:94.0/255.0f blue:252.0/255.0f alpha:1.00f];
    //[[UINavigationBar appearance] setBarTintColor:UIColorFromRGB(0x067AB5)];
    
    UIColor *barColor = UIColorFromRGB(0x495EFC,0.5);
    
    UIView *colorView = [[UIView alloc] initWithFrame:CGRectMake(0.f, -20.f, 320.f, 64.f)];
    colorView.opaque = NO;
    colorView.alpha = .5f;
    colorView.backgroundColor = barColor;
    
    self.navigationController.navigationBar.barTintColor = barColor;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    /*self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
     self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
     [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
     self.navigationController.navigationBar.translucent = NO;*/
    
    [self.navigationController.navigationBar.layer insertSublayer:colorView.layer atIndex:0];
}

- (UIBarPosition)positionForBar:(id <UIBarPositioning>)bar {
    return UIBarPositionTopAttached;
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}


@end