//
//  Business.h
//  Sprread
//
//  Created by Roger Perez on 4/17/14.
//  Copyright (c) 2014 Roger Perez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Business : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *address;
@property (nonatomic) NSString *phoneNumber;
@property (nonatomic) MKMapPoint *coordinates;
@property (nonatomic) NSMutableArray *currentUserSprreads;
@property (nonatomic) NSMutableArray *sprreads;

@end
