//
//  timerViewController.h
//  ReactionMasters
//
//  Created by iPhoneStudent on 7/24/13.
//  Copyright (c) 2013 iPhoneStudent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface timerViewController : UIViewController
@property (strong, nonatomic) NSTimer *timer;
@property (strong, nonatomic) IBOutlet UILabel *secondsElapsed;
- (IBAction)test:(id)sender;
@property (nonatomic,assign) int Mainint;
@end
