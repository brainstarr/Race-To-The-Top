//
//  MountainPath.m
//  Race To The Top
//
//  Created by Brian Starr on 10/31/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "MountainPath.h"

@implementation MountainPath

+(NSArray *)mountainPathsForRect:(CGRect)rect
{
    NSMutableArray *variousPaths = [@[] mutableCopy];
    CGPoint firstPoint = CGPointMake(rect.size.width * (1/6.0), CGRectGetMaxY(rect));
    CGPoint secondPoint = CGPointMake(rect.size.width * (1/3.0), rect.size.height * (5/6.0));
    
    UIBezierPath *labyrinth = [UIBezierPath bezierPath];
    labyrinth.lineWidth = 4.0;
    [labyrinth moveToPoint:firstPoint];
    [labyrinth addLineToPoint:secondPoint];
    
    [variousPaths addObject:labyrinth];
    
    return variousPaths;
}

@end
