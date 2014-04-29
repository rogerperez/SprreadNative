//
//  WebViewController.m
//  Sprread
//
//  Created by Roger Perez on 4/7/14.
//  Copyright (c) 2014 Roger Perez. All rights reserved.
//

#import "WebViewController.h"
#import "FeedController.h"
#import "AFNetworking.h"

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
    [self loadWebViewWithUrlRequest:loginUrlRequest showSpinner:YES];

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
    [self.spinner startAnimating];
}

- (IBAction)cancelButtonTap:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UIWebViewDelegate

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    // finished loading, hide the activity indicator in the status bar
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    self.spinner.hidden = YES;

}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSURL *currentUrl = request.URL;
    NSString *url = currentUrl.absoluteString;
    
    /****
     *  facebook
     ****/
    NSString *triggerUrlQueryString = @"/sprread/Account/FacebookCallback?code=";
    NSRange rangeOfSubstring = [url rangeOfString:triggerUrlQueryString];
    if(rangeOfSubstring.location != NSNotFound){
        [self dismissViewControllerAnimated:YES completion:nil];

        // present new view controller
        [self switchToFeedController];
    }
    return YES;

}

- (void)switchToFeedController
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    FeedController *viewController = (FeedController *)[storyboard instantiateViewControllerWithIdentifier:@"feedController"];
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void) loadFeedwithController

{
    NSURL *resourceURLString = [[NSBundle mainBundle] resourceURL];
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@feedPreview.json", resourceURLString]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];

    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject){
        NSDictionary *data = responseObject;
        NSLog(@"%@", data);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Feed"
                                                            message:[error localizedDescription]
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
    }];
    
    [operation start];
    
}

@end
