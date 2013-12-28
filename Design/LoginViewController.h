//
//  LoginViewController.h
//  Design
//
//  Created by Lienne Nguyen on 12/18/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface LoginViewController : UIViewController

@property (nonatomic,strong) id delegate;
- (IBAction)backButton:(id)sender;
- (IBAction)loginButton:(id)sender;


@end
