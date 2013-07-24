//
//  timerViewController.m
//  ReactionMasters
//
//  Created by iPhoneStudent on 7/24/13.
//  Copyright (c) 2013 iPhoneStudent. All rights reserved.
//

#import "timerViewController.h"
#import "Timer2ViewController.h"

@interface timerViewController ()

@end

@implementation timerViewController

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

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    self.secondsElapsed.text=@"10";
    self.timer=[NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(timerFired:) userInfo:nil repeats:YES];
    
    
}

-(void) timerFired:(NSTimer *)timer
{
    self.secondsElapsed.text=[NSString stringWithFormat:@"%.2f", (self.secondsElapsed.text.floatValue-.01)];
    //self.Mainint= self.Mainint-1;
    //self.secondsElapsed.text=[NSString stringWithFormat:@"%i", self.Mainint];
    
}

- (IBAction)test:(id)sender
{
    [self performSegueWithIdentifier:@"seguetoVictory" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [self.timer invalidate];
    
    if ([segue.identifier isEqualToString:@"segueToVictory"])
    {
        Timer2ViewController *destViewController=segue.destinationViewController;
        
        destViewController.seconds=self.secondsElapsed.text.floatValue;
    }
}



@end
