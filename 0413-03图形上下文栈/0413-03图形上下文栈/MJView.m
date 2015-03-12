//
//  MJView.m
//  0413-03图形上下文栈
//
//  Created by Yin Liang on 2015-03-09.
//  Copyright (c) 2015 Yin Liang. All rights reserved.
//

#import "MJView.h"

@implementation MJView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(ctx);
    
    
    CGContextSetLineWidth(ctx, 10);
    [[UIColor redColor] set];
    CGContextSetLineCap(ctx, kCGLineCapRound);
    
    CGContextMoveToPoint(ctx, 50, 50);
    CGContextAddLineToPoint(ctx, 120, 190);
    CGContextStrokePath(ctx);
    
    CGContextRestoreGState(ctx);
    
    CGContextMoveToPoint(ctx, 10, 57);
    CGContextAddLineToPoint(ctx, 220, 290);
    
    CGContextStrokePath(ctx);
    
}


@end
