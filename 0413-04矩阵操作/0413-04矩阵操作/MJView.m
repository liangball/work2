//
//  MJView.m
//  0413-04矩阵操作
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
     CGContextRotateCTM(ctx, M_PI_4 * 0.3);
//      CGContextScaleCTM(ctx, 0.5, 0.5);
    
    
    CGContextAddRect(ctx, CGRectMake(10, 10, 50, 50));
    
    CGContextAddEllipseInRect(ctx, CGRectMake(100, 100, 100, 100));
    
    CGContextMoveToPoint(ctx, 100, 100);
    CGContextAddLineToPoint(ctx, 200, 250);
    
  
   
    
    CGContextStrokePath(ctx);
    
    
}


@end
