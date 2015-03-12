//
//  MJShapeView.m
//  0413-01基本图形绘制
//
//  Created by Yin Liang on 2015-03-07.
//  Copyright (c) 2015 Yin Liang. All rights reserved.
//

#import "MJShapeView.h"

@implementation MJShapeView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    draw4Rect();
//    drawTriangle();

}

//画四边形
void draw4Rect()
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextAddRect(ctx, CGRectMake(10, 10, 150, 80));
    
//    set: 同时设置为实心喝空心颜色
//    setFill: 设置为实心颜色
//    setStroke: 设置为空心颜色
//    [[UIColor whiteColor] set];
    [[UIColor whiteColor] setFill];
//    CGContextStrokePath(ctx);
    
//    画成实心的图案
    CGContextFillPath(ctx);
}

//画三角形
void drawTriangle()
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(ctx, 0, 0);
    CGContextAddLineToPoint(ctx, 100, 100);
    CGContextAddLineToPoint(ctx, 150, 80);
    CGContextClosePath(ctx);
    
    CGContextSetLineWidth(ctx, 10);
    CGContextStrokePath(ctx);
}

@end
