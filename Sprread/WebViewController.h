//
//  WebViewController.h
//  Sprread
//
//  Created by Roger Perez on 4/7/14.
//  Copyright (c) 2014 Roger Perez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIWebView.h>

@interface WebViewController : UIViewController

@property (strong) NSURL *loginUrl;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;
- (IBAction)cancelButtonTap:(id)sender;

@end
