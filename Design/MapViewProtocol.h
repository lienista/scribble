//
//  MapViewProtocol.h
//  Design
//
//  Created by Lien Nguyen on 12/23/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MapViewProtocolDelegate <NSObject>
@required
- (void) processCompleted;
@end

@interface MapViewProtocol : NSObject

@property (nonatomic, strong) id <MapViewProtocolDelegate> delegate;
-(void) startSampleProcess;
@end
