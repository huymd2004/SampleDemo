//
//  viewDemo.m
//  SampleDemo
//
//  Created by Mac Dang Huy on 10/22/14.
//  Copyright (c) 2014 Mac Dang Huy. All rights reserved.
//

#import "viewDemo.h"

@implementation viewDemo


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    // Drawing code
    //// Color Declarations
    UIColor* colorBackground = [UIColor colorWithRed: 0.941 green: 0.941 blue: 0.941 alpha: 1];
    UIColor* colorText = [UIColor colorWithRed: 0.294 green: 0.294 blue: 0.294 alpha: 1];
    
    CGFloat width = rect.size.width;
    CGFloat height = rect.size.height;
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(0, 5, width, (height - 5))];
    [colorBackground setFill];
    [rectanglePath fill];
    
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(width/2 - 5, 5)];
    [bezierPath addLineToPoint: CGPointMake(width/2, 0)];
    [bezierPath addLineToPoint: CGPointMake(width/2 + 5, 5)];
    [bezierPath addLineToPoint: CGPointMake(width/2 - 5, 5)];
    [bezierPath closePath];
    [colorBackground setFill];
    [bezierPath fill];
    
    //// Text Drawing
    CGRect textRect = CGRectMake(0, 5, width, 30);
    {
        NSString* textContent = @"Địa chỉ: Toà nhà T26 Time City, 465 Minh Khai, Hai Bà Trưng, Hà Nội";
        UIFont *font = [UIFont fontWithName: @"Roboto-Light" size: 12];
        NSMutableParagraphStyle *textStyle = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
        textStyle.lineBreakMode = NSLineBreakByWordWrapping;
        textStyle.alignment = NSTextAlignmentLeft;
        NSDictionary *textFontAttributes = [NSDictionary dictionaryWithObjectsAndKeys:textStyle, NSParagraphStyleAttributeName, font, NSFontAttributeName, colorText, NSForegroundColorAttributeName, nil];
        
        [textContent drawInRect: CGRectOffset(textRect, 0, (CGRectGetHeight(textRect) - [textContent boundingRectWithSize: textRect.size options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height) / 2) withAttributes: textFontAttributes];
    }
}


@end
