//
//  AppDelegate.m
//  Design
//
//  Created by Lienne Nguyen on 12/18/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

//#define UIColorFromRGB(rgbValue, alphaValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:alphaValue]

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    UIPageControl *pageControl = [UIPageControl appearance];
    
    pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    pageControl.currentPageIndicatorTintColor = [UIColor darkGrayColor];
    pageControl.backgroundColor = [UIColor clearColor];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    for (NSString* family in [UIFont familyNames])
    {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family])
        {
            NSLog(@"  %@", name);
        }
    }
    
    [self setCustomStyle];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    [self setCustomStyle];
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
[[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    [self setCustomStyle];

}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void) setCustomStyle {
    self.window.tintColor = UIColorFromRGB(0x495EFC,0.2);
    UIColor *barColor = UIColorFromRGB(0x495EFC,0.5);
    
    UIView *colorView = [[UIView alloc] initWithFrame:CGRectMake(0.f, -20.f, 320.f, 64.f)];
    colorView.opaque = NO;
    colorView.alpha = .5f;
    colorView.backgroundColor = barColor;
    
     UIFont* font = [UIFont fontWithName:@"LeagueGothic" size:32.0f];
    
    UIColor* textColor = [UIColor whiteColor];
    NSDictionary *barTitleAttributes = @{ NSForegroundColorAttributeName : textColor,
                             NSFontAttributeName : font,
                             NSStrokeWidthAttributeName : [NSNumber numberWithFloat:-2.0],
                             NSStrokeColorAttributeName : [UIColor lightGrayColor]
                             };
    
    [[[UINavigationBar appearance] layer] insertSublayer:colorView.layer above:0];

    [[UINavigationBar appearance] setBarTintColor: barColor];
    [[UINavigationBar appearance] setTintColor:textColor];
    [[UINavigationBar appearance] setBarStyle:UIBarStyleDefault];
    [[UINavigationBar appearance] setTitleTextAttributes:barTitleAttributes];
    [[UITabBar appearance] setBarTintColor:textColor];
    
    
    
    //segmented control
    
    [[UISegmentedControl appearance] setBackgroundColor:[UIColor whiteColor]];
    NSDictionary *highlightedAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    [[UISegmentedControl appearance] setTitleTextAttributes:highlightedAttributes forState:UIControlStateSelected];



}

- (UIBarPosition)positionForBar:(id <UIBarPositioning>)bar
{
    return UIBarPositionTopAttached;
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end
