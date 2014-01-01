//
//  MyTabBarController.m
//  Design
//
//  Created by Lienne Nguyen on 12/19/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import "MyTabBarController.h"
#import "NeighborTableViewController.h"

@implementation MyTabBarController

-(void) customizeNavigationBar
{
    UIBarButtonItem *leftsidebarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu.png"] style:UIBarButtonItemStylePlain target:self.revealViewController action:@selector(revealToggle:)];
        UIBarButtonItem *rightsidebarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"settings.png"] style:UIBarButtonItemStylePlain target:self.revealViewController action:@selector(revealToggle:)];

    self.navigationItem.leftBarButtonItem = leftsidebarButton;
    self.navigationItem.rightBarButtonItem = rightsidebarButton;
}

-(void) viewDidLoad
{
    [self customizeNavigationBar];
}

-(void)viewDidAppear:(BOOL)animated
{
    if(animated==YES) {
        [self customizeNavigationBar];
    }
}

@end
