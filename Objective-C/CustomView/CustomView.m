//
//  CustomView.m
//  CustomView
//
//  Created by 洛洛扥 on 2017/8/17.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView {
    int _curX;
    int _curY;
    
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint last = [touch locationInView:self];
    _curX = last.x;
    _curY = last.y;
    [self setNeedsDisplay];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctx, [[UIColor redColor] CGColor]);
    CGContextFillEllipseInRect(ctx, CGRectMake(_curX-10, _curY-10, 20, 20));
    
    
}


@end
