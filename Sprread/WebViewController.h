//
//  WebViewController.h
//  Sprread
//
//  Created by Roger Perez on 4/7/14.
//  Copyright (c) 2014 Roger Perez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong) NSURL *loginUrl;

- (IBAction)cancelButtonTap:(id)sender;

@end
