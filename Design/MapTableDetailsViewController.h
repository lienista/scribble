//
//  MapTableDetailsViewController.h
//  Design
//
//  Created by Lien Nguyen on 12/27/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapTableDetailsViewController : UITableViewController <UIBarPositioningDelegate,CLLocationManagerDelegate, MKMapViewDelegate, UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate>

- (IBAction)back:(id)sender;

@end
