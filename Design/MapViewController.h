//
//  MapViewController.h
//  Design
//
//  Created by Lienne Nguyen on 12/22/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"

@interface MapViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, UINavigationBarDelegate, UIBarPositioningDelegate>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@property (strong, nonatomic) UILabel *latitude;
@property (strong, nonatomic) UILabel *longitude;
@property (strong, nonatomic) UILabel *horizontalAccuracy;
@property (strong, nonatomic) UILabel *altitude;
@property (strong, nonatomic) UILabel *verticalAccuracy;
@property (strong, nonatomic) UILabel *distance;
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLLocation *startLocation;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)zoomIn:(id)sender;
- (IBAction)changeMapType:(id)sender;
- (IBAction)resetDistance:(id)sender;
- (IBAction)back:(id)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@end
