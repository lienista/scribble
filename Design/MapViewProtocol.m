//
//  MapViewProtocol.m
//  Design
//
//  Created by Lien Nguyen on 12/23/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import "MapViewProtocol.h"

@implementation MapViewProtocol 

-(void)startSampleProcess {
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self.delegate selector:@selector(processCompleted) userInfo:nil repeats:NO];
}

@end
