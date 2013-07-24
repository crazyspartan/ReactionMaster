//
//  GameLayout.m
//  ReactionMaster
//
//  Created by iPhoneStudent on 7/24/13.
//  Copyright (c) 2013 Arizona State University. All rights reserved.
//

#import "GameLayout.h"


@interface GameLayout ()

@end

@implementation GameLayout

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
    self.images=[NSArray arrayWithObjects:@"1.jpeg", @"2.jpeg",@"3.jpeg",@"4.jpeg",@"5.jpeg",@"6.jpeg",@"7.jpeg",nil];

}

-(id)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.numberOfCells=7;
    }
    return self;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) drawRect:(CGRect)rect{
    //[super drawRect:rect];
    [self drawGrid:rect];
    /* [UIView animateWithDuration:.75 animations:^{
     [self updateImages];
     }];*/
}

-(void) drawGrid:(CGRect)rect{
    int i=0;
    
    int width=rect.size.width;
    int height=rect.size.height;
    
    int gridWith=MIN(width, height);
    
    _x_gap= width-gridWith;
    _y_gap=height-gridWith;
    
    _cellPointWidth=gridWith/self.numberOfCells;
    
    int emptyPoints = gridWith-_cellPointWidth*self.numberOfCells;
    
    
    int x_endpoint=gridWith+_x_gap/2-emptyPoints;
    int y_endpoint= gridWith+_y_gap/2-emptyPoints;
    
    [[UIColor blackColor ] setStroke];
    
    UIBezierPath* drawingPath =[UIBezierPath bezierPath];
    
    for (i=_x_gap/2; i<=width-_x_gap/2; i=i+_cellPointWidth) {
        [drawingPath moveToPoint:CGPointMake(i, _y_gap/2)];
        [drawingPath addLineToPoint:CGPointMake(i, y_endpoint)];
        
    }
    for (i=_y_gap/2;i<=height-_y_gap/2; i=i+_cellPointWidth) {
        [drawingPath moveToPoint:CGPointMake(_x_gap/2, i)];
        [drawingPath addLineToPoint:CGPointMake(x_endpoint, i)];
    }
    [drawingPath stroke];
}


@end