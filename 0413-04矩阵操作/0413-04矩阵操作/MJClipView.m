//
//  MJClipView.m
//  0413-04矩阵操作
//
//  Created by Yin Liang on 2015-03-09.
//  Copyright (c) 2015 Yin Liang. All rights reserved.
//

#import "MJClipView.h"

@implementation MJClipView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(ctx);
    CGContextAddEllipseInRect(ctx, CGRectMake(100, 100, 50, 50));
    CGContextClip(ctx);
    CGContextFillPath(ctx);
    
    
    UIImage *image = [UIImage imageNamed:@"me"];
    [image drawAtPoint:CGPointMake(100, 100)];
    
    CGContextRestoreGState(ctx);
    
    CGContextAddRect(ctx, CGRectMake(0, 0, 50, 130));
    CGContextFillPath(ctx);
    
    
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(setNeedsDisplay) userInfo:nil repeats:YES];
    
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(setNeedsDisplay)];
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    
    CGMutablePathRef linePath = CGPathCreateMutable();
    
}


@end
