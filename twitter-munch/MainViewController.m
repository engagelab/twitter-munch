//
//  ViewController.m
//  twitter-munch
//
//  Created by Anthony Perritano on 11/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import <Twitter/TWTweetComposeViewController.h>

@implementation MainViewController
@synthesize tweetButton;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{

    [super viewDidLoad];
    
}

- (void)viewDidUnload
{
    [self setTweetButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if (interfaceOrientation==UIInterfaceOrientationLandscapeLeft || interfaceOrientation==UIInterfaceOrientationLandscapeRight)
        return YES;
    
    return NO;
}

- (IBAction)showTweet:(id)sender {
    
    TWTweetComposeViewController *twitter = [[TWTweetComposeViewController alloc] init];
    
    [twitter setInitialText:@"#munchsverden - "];
   
    
    [self presentViewController:twitter animated:YES completion:nil];
    
    twitter.completionHandler = ^(TWTweetComposeViewControllerResult res) {
        
        if(res == TWTweetComposeViewControllerResultDone)
        {
            
            UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Takk!" message:@"Se ditt 10. bud på veggen" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            [alertView show];
            
        }else if(res == TWTweetComposeViewControllerResultCancelled)
        {
            
            UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Takk!" message:@"Du kan prøve igjen senere" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            [alertView show];
            
        }
        
        [self dismissModalViewControllerAnimated:YES];
        
    };
    

}
@end
