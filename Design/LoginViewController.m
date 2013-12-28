//
//  LoginViewController.m
//  Design
//
//  Created by Lienne Nguyen on 12/18/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import "LoginViewController.h"
#import "TabViewController.h"
#import "MyTabBarController.h"
#import "MyNavigationController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if([segue.identifier isEqualToString:@"loginButton"]) {
        [self presentViewController:[segue destinationViewController] animated:YES completion:^{
            NSLog(@"prepare for segue");
            NSLog(@"segue identifier %@", [segue identifier]);
            NSLog(@"source view controller %@", [segue sourceViewController]);
            NSLog(@"destination view controller %@", [segue destinationViewController]);
        }];
        
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
        NSLog(@"Back Button Clicked from Login View Controller");
    }];

    
    
    
    /*[self dismissViewControllerAnimated:YES completion:^{
        
        NSLog(@"Back Button Clicked from Login View Controller");
    }];*/
    


}

- (IBAction)loginButton:(id)sender {
    
    
}


@end
