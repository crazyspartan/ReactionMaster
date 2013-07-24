//
//  GameLayout.h
//  ReactionMaster
//
//  Created by iPhoneStudent on 7/24/13.
//  Copyright (c) 2013 Arizona State University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameLayout : UIViewController
@property(nonatomic) int numberOfCells;
@property(nonatomic) int x_gap;
@property(nonatomic) int y_gap;
@property(nonatomic) int cellPointWidth;
@property(strong,nonatomic) NSArray *images;
@end
