//
//  PageContentViewController.m
//  Design
//
//  Created by Lienne Nguyen on 12/18/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import "PageContentViewController.h"

@interface PageContentViewController ()

@end

@implementation PageContentViewController

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
	self.backgroundImageView.image = [UIImage imageNamed:self.imageFile];
    
    UIFont* font = [UIFont fontWithName:@"Baskerville-BoldItalic" size:36.0f];

    UIColor* textColor = [UIColor whiteColor];
    NSDictionary *attrs = @{ NSForegroundColorAttributeName : textColor,
                             NSFontAttributeName : font,
                             NSStrokeWidthAttributeName : [NSNumber numberWithFloat:-2.0],
                             NSStrokeColorAttributeName : [UIColor darkGrayColor]
                             };
    
    NSAttributedString *attrString = [[NSAttributedString alloc]
                                      initWithString:self.titleText
                                      attributes:attrs];
    
    self.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.titleLabel.numberOfLines = 0;
    self.titleLabel.attributedText = attrString;


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
