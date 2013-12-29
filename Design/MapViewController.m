//
//  MapViewController.m
//  Design
//
//  Created by Lienne Nguyen on 12/22/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController () 
@end

@implementation MapViewController

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

    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    _locationManager.delegate = self;
    [_locationManager startUpdatingLocation];
    _startLocation = nil;
    
    _mapView.showsUserLocation = YES;
    
    
    
}
-(void) viewWillAppear:(BOOL)animated {


}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)resetDistance:(id)sender
{
    _startLocation = nil;
}

- (IBAction)back:(id)sender {
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


#pragma mark - CLLocationManagerDelegate
-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation
          fromLocation:(CLLocation *)oldLocation
{
    NSString *currentLatitude = [[NSString alloc] initWithFormat:@"%+.6f", newLocation.coordinate.latitude];
    _latitude.text = currentLatitude;
    NSString *currentLongitude = [[NSString alloc] initWithFormat:@"%+.6f", newLocation.coordinate.longitude];
    _longitude.text = currentLongitude;
    NSString *currentHorizontalAccuracy = [[NSString alloc]
                                           initWithFormat:@"%+.6f",
                                           newLocation.horizontalAccuracy]; _horizontalAccuracy.text = currentHorizontalAccuracy;
    NSString *currentAltitude = [[NSString alloc] initWithFormat:@"%+.6f", newLocation.altitude];
    _altitude.text = currentAltitude;
    
    NSString *currentVerticalAccuracy = [[NSString alloc] initWithFormat:@"%+.6f", newLocation.verticalAccuracy];
    _verticalAccuracy.text = currentVerticalAccuracy;
    
    if (_startLocation == nil)
        _startLocation = newLocation;
    
    CLLocationDistance distanceBetween = [newLocation distanceFromLocation:_startLocation];
    NSString *tripString = [[NSString alloc]
                            initWithFormat:@"%f",
                            distanceBetween];
    
    _distance.text = tripString;
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    
}

-(void)locationManager:(CLLocationManager *)manager didFinishDeferredUpdatesWithError:(NSError *)error
{

}


- (void)zoomIn:(id)sender {
    MKUserLocation *userLocation = _mapView.userLocation; MKCoordinateRegion region =
    MKCoordinateRegionMakeWithDistance ( userLocation.location.coordinate, 20000, 20000);
    [_mapView setRegion:region animated:NO];
}

- (IBAction)changeMapType:(id)sender {
    if (_mapView.mapType == MKMapTypeStandard) _mapView.mapType = MKMapTypeSatellite;
    else
        _mapView.mapType = MKMapTypeStandard;
}

- (void)mapView:(MKMapView *)mapView
didUpdateUserLocation:
(MKUserLocation *)userLocation
{
    _mapView.centerCoordinate = userLocation.location.coordinate;
}

- (UIBarPosition)positionForBar:(id <UIBarPositioning>)bar {
    return UIBarPositionTopAttached;
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
@end
