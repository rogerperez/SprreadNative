//
//  StartController.m
//  Sprread
//
//  Created by Roger Perez on 4/6/14.
//  Copyright (c) 2014 Roger Perez. All rights reserved.
//

#import "StartController.h"
#import "WebViewController.h"

@interface StartController ()

@end

@implementation StartController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)facebookLoginTap:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:nil];
    WebViewController *webViewController = (WebViewController*)[storyboard instantiateViewControllerWithIdentifier:@"logincontroller"];
    NSURL *facebookLoginUrl = [NSURL URLWithString:@"http://www.sprread.com/Sprread/Account/Authenticate?auth=facebook"];

    webViewController.loginUrl = facebookLoginUrl;
    [self presentViewController:webViewController animated:YES completion:nil];
    
}

- (IBAction)googlePlusLoginTap:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:nil];
    WebViewController *webViewController = (WebViewController*)[storyboard instantiateViewControllerWithIdentifier:@"logincontroller"];
    NSURL *googleLoginUrl = [NSURL URLWithString:@"http://www.sprread.com/Sprread/Account/Authenticate?auth=google"];
    
    webViewController.loginUrl = googleLoginUrl;
    [self presentViewController:webViewController animated:YES completion:nil];
}

@end
