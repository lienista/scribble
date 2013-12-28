//
//  ViewController.h
//  Design
//
//  Created by Lienne Nguyen on 12/18/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;

@property (strong, nonatomic) NSArray *pageTitles;
@property (strong, nonatomic) NSArray *pageImages;

- (IBAction)loginButon:(id)sender;
- (IBAction)signupButton:(id)sender;


@end
