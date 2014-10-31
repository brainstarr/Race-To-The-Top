//
//  SpaceShipView.m
//  Race To The Top
//
//  Created by Brian Starr on 10/30/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "SpaceShipView.h"

@implementation SpaceShipView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    bezierPath.lineWidth = 2;
    
    [bezierPath moveToPoint:CGPointMake(1/6.0 *self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(2/3.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/3.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    [bezierPath closePath];
    [bezierPath stroke];
    
    UIBezierPath *cockpitWindow = [UIBezierPath bezierPathWithRect:CGRectMake(1.5/3.0 *self.bounds.size.width, 1/2.0 *self.bounds.size.height, 1/6.0*self.bounds.size.width, 1/12.0 * self.bounds.size.height)];
    [[UIColor blueColor]setFill];
    [cockpitWindow fill];
}


@end
