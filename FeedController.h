//
//  FeedController.h
//  Sprread
//
//  Created by Roger Perez on 4/13/14.
//  Copyright (c) 2014 Roger Perez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>


@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end
