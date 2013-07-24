//
//  Timer2ViewController.m
//  ReactionMasters
//
//  Created by iPhoneStudent on 7/24/13.
//  Copyright (c) 2013 iPhoneStudent. All rights reserved.
//

#import "Timer2ViewController.h"

@interface Timer2ViewController ()

@end

@implementation Timer2ViewController

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
    self.timeElapsed.text=[NSString stringWithFormat:@"Time Elapsed: %.2f seconds", self.seconds];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
