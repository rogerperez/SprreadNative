//
//  User.m
//  Sprread
//
//  Created by Roger Perez on 4/5/14.
//  Copyright (c) 2014 Roger Perez. All rights reserved.
//

#import "User.h"

@implementation User

@synthesize userName = _userName;
@synthesize userImage = _userImage;

- (id)initWithUserName:(NSString *)userName userImage:(UIImage *)userImage
{
    if ((self = [super init])) {
        self.userName = _userName;
        self.userImage = _userImage;
    }
    
    return self;
}

- (void) changerUserImageWithImage:(UIImage *)newImage
{
    self.userImage = newImage;
}







@end
