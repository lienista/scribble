//
//  MapTableViewController.h
//  Design
//
//  Created by Lienne Nguyen on 12/22/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapViewController.h"
#import "SWRevealViewController.h"

@interface MapTableViewController : UIViewController <UIScrollViewDelegate,CLLocationManagerDelegate, MKMapViewDelegate, UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;



@end
