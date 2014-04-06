//
//  Sprread.h
//  Sprread
//
//  Created by Roger Perez on 4/5/14.
//  Copyright (c) 2014 Roger Perez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Sprread : NSObject

@property (strong) UIImage *fullImage;
@property (strong) UIImage *thumbImage;
@property (strong) User *photographer;
@property BOOL isRecruit;
@property BOOL isRedeem;
@property BOOL isRedeemable;

- (id)initWithFullImage:(UIImage *)fullImage thumbImage:(UIImage *)thumbImage photographer:(User *)photographer;

@end
