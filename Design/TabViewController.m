//
//  TabViewController.m
//  Design
//
//  Created by Lienne Nguyen on 12/19/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import "TabViewController.h"


@interface TabViewController ()

@end

@implementation TabViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"entered tab view controller");

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.navigationController.navigationBar.translucent = YES;
    self.automaticallyAdjustsScrollViewInsets = YES;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideShowNavigation)];
    tap.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tap];
    

    
}

- (void) hideShowNavigation
{
    [self.navigationController setNavigationBarHidden:!self.navigationController.navigationBarHidden];
    [self hidesBottomBarWhenPushed];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)done:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"done first page");
    }];
}
@end
