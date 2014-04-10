//
//  WebViewController.m
//  Sprread
//
//  Created by Roger Perez on 4/7/14.
//  Copyright (c) 2014 Roger Perez. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController() <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURLRequest *loginUrlRequest = [NSURLRequest requestWithURL:[self loginUrl]];
    [self.webView setDelegate:self];
    [self loadWebViewWithUrlRequest:loginUrlRequest showSpinner:NO];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadWebViewWithUrlRequest:(NSURLRequest *)urlRequest showSpinner:(BOOL)showSpinner
{
    [self.webView loadRequest:urlRequest];
    self.spinner.hidden = !showSpinner;
}

- (IBAction)cancelButtonTap:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    // Finished loading, hide the activity indicator in the status bar.
    NSLog(@"Starting Load");
}

@end
