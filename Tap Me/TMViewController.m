//
//  TMViewController.m
//  Tap Me
//
//  Created by Yin on 14-2-16.
//  Copyright (c) 2014年 Jack Yin. All rights reserved.
//

#import "TMViewController.h"

@interface TMViewController ()

@end

@implementation TMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupGame];
}

- (IBAction)buttonPressed:(id)sender
{
    count ++;
    
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];
}

- (void)setupGame
{
    seconds = 5;
    count = 0;
    
    timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}

- (void)subtractTime
{
    seconds--;
    
    timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    
    if (seconds == 0) {
        [timer invalidate];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!" message:[NSString stringWithFormat:@"You scored %i points", count] delegate:self cancelButtonTitle:@"Play Again" otherButtonTitles:nil, nil];
        
        [alert show];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [self setupGame];
}

@end
