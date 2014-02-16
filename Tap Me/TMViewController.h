//
//  TMViewController.h
//  Tap Me
//
//  Created by Yin on 14-2-16.
//  Copyright (c) 2014年 Jack Yin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMViewController : UIViewController <UIAlertViewDelegate>
{
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    
    NSInteger count;
    NSInteger seconds;
    
    NSTimer *timer;
}

- (IBAction)buttonPressed:(id)sender;

- (void)setupGame;

@end
