//
//  MJView.m
//  0413-01基本图形绘制
//
//  Created by Yin Liang on 2015-03-07.
//  Copyright (c) 2015 Yin Liang. All rights reserved.
//

#import "MJLineView.h"

@implementation MJLineView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
//    1.获得图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    设置线段宽度
    CGContextSetLineWidth(ctx, 10);
    
//    设置线段头尾部的样式
    CGContextSetLineCap(ctx, kCGLineCapRound);
    
    CGContextSetLineJoin(ctx, kCGLineCapRound);
//    第一根线
//    2.拼接图形（路径）
//    设置一个起点
    CGContextMoveToPoint(ctx, 10, 10);
//    添加一条线段到（100，100）
    CGContextAddLineToPoint(ctx, 100, 100);
//    设置颜色
    CGContextSetRGBStrokeColor(ctx, 1, 0, 0, 1);
    //    3.渲染显示到view上面
    CGContextStrokePath(ctx);
    
    
//    第二根线
    //    设置一个起点
    CGContextMoveToPoint(ctx, 50, 20);
    CGContextAddLineToPoint(ctx, 150, 40);
    CGContextAddLineToPoint(ctx, 30, 190);
    
    CGContextSetRGBStrokeColor(ctx, 0, 0, 1, 1);
//    3.渲染显示到view上面
    CGContextStrokePath(ctx);
}


@end
