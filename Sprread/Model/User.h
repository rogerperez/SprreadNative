//
//  User.h
//  Sprread
//
//  Created by Roger Perez on 4/5/14.
//  Copyright (c) 2014 Roger Perez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (strong, nonatomic) NSString *userName;
@property (strong, nonatomic) UIImage *userImage;
@property (strong, nonatomic) NSString *id;
@property (strong) NSString *loginType;
@property NSInteger *expiring;
@property NSInteger *sprreads;
@property NSInteger *redeems;
@property NSInteger *recruits;

- (void)changerUserImageWithImage:(UIImage *)newImage;

- (id)initWithUserName:(NSString *)userName userImage:(UIImage *)userImage loginType:(NSString *)loginType;

//- (SprreadImage *)sprread;

@end
