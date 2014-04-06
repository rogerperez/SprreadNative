//
//  Sprread.m
//  Sprread
//
//  Created by Roger Perez on 4/5/14.
//  Copyright (c) 2014 Roger Perez. All rights reserved.
//

#import "Sprread.h"

@implementation Sprread

@synthesize fullImage = _fullImage;
@synthesize thumbImage = _thumbImage;
@synthesize photographer = _photographer;

- (id)initWithFullImage:(UIImage *)fullImage thumbImage:(UIImage *)thumbImage photographer:(User *)photographer
{
    if((self = [super init]))
    {
        self.fullImage = _fullImage;
        self.thumbImage = _thumbImage;
        self.photographer = _photographer;
    }
    
    return self;
}

@end
