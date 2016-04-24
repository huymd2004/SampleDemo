//
//  billView.m
//  SampleDemo
//
//  Created by Mac Dang Huy on 10/29/14.
//  Copyright (c) 2014 Mac Dang Huy. All rights reserved.
//

#import "billView.h"

@implementation billView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    CGRect frame = rect;
    //// Color Declarations
    UIColor* rectangle127Copy3Color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* rectangle127Copy3StrokeColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.15];
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.58359 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12723 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12500 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99777 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99777 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12500 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.41406 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12500 * CGRectGetHeight(frame))];
    
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.41406 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.03125 * CGRectGetHeight(frame))
                  controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.41406 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11808 * CGRectGetHeight(frame))
                  controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.41406 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.03125 * CGRectGetHeight(frame))];

    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.42031 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.01339 * CGRectGetHeight(frame))
                  controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.41406 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.02139 * CGRectGetHeight(frame))
                  controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.41686 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.01339 * CGRectGetHeight(frame))];
    
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.57656 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.01339 * CGRectGetHeight(frame))];
    
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.58281 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.03125 * CGRectGetHeight(frame))
                  controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.58001 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.01339 * CGRectGetHeight(frame))
                  controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.58281 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.02139 * CGRectGetHeight(frame))];
    
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.58281 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12587 * CGRectGetHeight(frame))];
    
    [rectangle127Copy3Color setFill];
    [bezierPath fill];
    [rectangle127Copy3StrokeColor setStroke];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
}

@end
