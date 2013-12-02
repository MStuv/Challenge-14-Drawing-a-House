//
//  MASHouseView.m
//  Challenge #14 Drawing a House
//
//  Created by Mark Stuver on 12/1/13.
//  Copyright (c) 2013 Halo International Corp. All rights reserved.
//

#import "MASHouseView.h"

@implementation MASHouseView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    
#pragma mark - OUTLINE OF HOUSE
    // create instance of UIBezierPath
    UIBezierPath *houseOutlinePath = [[UIBezierPath alloc] init];
    // color of line
    [[UIColor blackColor]setStroke];
    // line width
    houseOutlinePath.lineWidth = 2;
    // starting point of testPath: top-left of box
    [houseOutlinePath moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 4/17.0 * self.bounds.size.height)];
    // path created from starting point to bottom-left of box
    [houseOutlinePath addLineToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 11/17.0 * self.bounds.size.height)];
    // path continued to bottom-right of box
    [houseOutlinePath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 11/17.0 * self.bounds.size.height)];
    // path continued to top-right of box
    [houseOutlinePath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 4/17.0 * self.bounds.size.height)];
    // path continued to peak roof
    [houseOutlinePath addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 2/17.0 * self.bounds.size.height)];
    // path closes to the starting point(top-left of box)
    [houseOutlinePath closePath];
    // draws path
    [houseOutlinePath stroke];

#pragma mark - Fill House
    // create instance of UIBezierPath
    UIBezierPath *houseFillPath = [[UIBezierPath alloc] init];
    // fill color
    [[UIColor lightGrayColor] setFill];
    // starting point of testPath: top-left of box
    [houseFillPath moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 4/17.0 * self.bounds.size.height)];
    // path created from starting point to bottom-left of box
    [houseFillPath addLineToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 11/17.0 * self.bounds.size.height)];
    // path continued to bottom-right of box
    [houseFillPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 11/17.0 * self.bounds.size.height)];
    // path continued to top-right of box
    [houseFillPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 4/17.0 * self.bounds.size.height)];
    // path closes to the starting point(top-left of box)
    [houseFillPath closePath];
    // draws path
    [houseFillPath fill];

#pragma mark - Chimney
    // create instance of UIBezierPath
    UIBezierPath *chimneyPath = [UIBezierPath bezierPathWithRect:
                                       CGRectMake(6/10.0 * self.bounds.size.width, 2/16.0 * self.bounds.size.height, 25, 35)];
    [[UIColor redColor]setFill];
    [chimneyPath fill];

#pragma mark - Fill Roof
    // create instance of UIBezierPath
    UIBezierPath *roofFillPath = [[UIBezierPath alloc] init];
    // color of line
    [[UIColor blackColor]setFill];
    // starting point of testPath: top-left of box
    [roofFillPath moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 4/17.0 * self.bounds.size.height)];
    // path created from starting point to bottom-left of box
    [roofFillPath addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 2/17.0 * self.bounds.size.height)];
    // path continued to bottom-right of box
    [roofFillPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 4/17.0 * self.bounds.size.height)];
    // path closes to the starting point(top-left of box)
    [roofFillPath closePath];
    // fill path
    [roofFillPath fill];

#pragma mark - Windows
    /// TOP WINDOW #1
    // create instance of UIBezierPath
    UIBezierPath *window1Path = [UIBezierPath bezierPathWithRect:CGRectMake(1/4.0 * self.bounds.size.width, 10/35.0 * self.bounds.size.height, 1/8.0 * self.bounds.size.width, 1/8.0 * self.bounds.size.height)];
    // line width
    window1Path.lineWidth = 1;
    // color of line
    [[UIColor blackColor]setStroke];
    [[UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.3]setFill];
    [window1Path stroke];
    [window1Path fill];
    
    /// TOP WINDOW #2
    // create instance of UIBezierPath
    UIBezierPath *window2Path = [UIBezierPath bezierPathWithRect:CGRectMake(9/20.0 * self.bounds.size.width, 10/35.0 * self.bounds.size.height, 1/8.0 * self.bounds.size.width, 1/8.0 * self.bounds.size.height)];
    // line width
    window2Path.lineWidth = 1;
    // color of line
    [[UIColor blackColor]setStroke];
    [[UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.3]setFill];
    [window2Path stroke];
    [window2Path fill];
    
    /// TOP WINDOW #3
    // create instance of UIBezierPath
    UIBezierPath *window3Path = [UIBezierPath bezierPathWithRect:CGRectMake(13/20.0 * self.bounds.size.width, 10/35.0 * self.bounds.size.height, 1/8.0 * self.bounds.size.width, 1/8.0 * self.bounds.size.height)];
    // line width
    window3Path.lineWidth = 1;
    // color of line
    [[UIColor blackColor]setStroke];
    [[UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.3]setFill];
    [window3Path stroke];
    [window3Path fill];
    
    /// BAY WINDOW
    // create instance of UIBezierPath
    UIBezierPath *bayWindowPath = [UIBezierPath bezierPathWithRect:CGRectMake(9/20.0 * self.bounds.size.width, 17/35.0 * self.bounds.size.height, 7.75/24.0 * self.bounds.size.width, 3/24.0 * self.bounds.size.height)];
    // line width
    bayWindowPath.lineWidth = 1;
    // color of line
    [[UIColor blackColor]setStroke];
    [[UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.3]setFill];
    [bayWindowPath stroke];
    [bayWindowPath fill];
    
    /// BAY WINDOW - DIVIDER
    // create instance of UIBezierPath
    UIBezierPath *bayWindowDividerPath = [UIBezierPath bezierPathWithRect:CGRectMake(12.25/20.0 * self.bounds.size.width, 17/35.0 * self.bounds.size.height, 0.125/24.0 * self.bounds.size.width, 3/24.0 * self.bounds.size.height)];
    // color fill
    [[UIColor blackColor]setFill];
    [bayWindowDividerPath fill];
    
#pragma mark - Door
    // create instance of UIBezierPath
    UIBezierPath *doorPath = [UIBezierPath bezierPathWithRect:CGRectMake(5/20.0 * self.bounds.size.width, 17/35.0 * self.bounds.size.height, 3.5/24.0 * self.bounds.size.width, 3.9/24.0 * self.bounds.size.height)];
    // line width
    doorPath.lineWidth = 2;
    // color of line
    [[UIColor blackColor]setStroke];
    [[UIColor colorWithRed:0.0 green:0.6 blue:0.0 alpha:1.0]setFill];
    [doorPath stroke];
    [doorPath fill];
}


@end
