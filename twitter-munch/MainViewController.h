//
//  ViewController.h
//  twitter-munch
//
//  Created by Anthony Perritano on 11/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *tweetButton;

- (IBAction)showTweet:(id)sender;

@end
