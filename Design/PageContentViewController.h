//
//  PageContentViewController.h
//  Design
//
//  Created by Lienne Nguyen on 12/18/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;

@end
