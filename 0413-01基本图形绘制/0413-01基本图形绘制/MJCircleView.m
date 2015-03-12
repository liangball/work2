//
//  MJCircleView.m
//  0413-01基本图形绘制
//
//  Created by Yin Liang on 2015-03-07.
//  Copyright (c) 2015 Yin Liang. All rights reserved.
//

#import "MJCircleView.h"

@implementation MJCircleView

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

    
    //    1.获得图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //  2. 画圆
    CGContextMoveToPoint(ctx, 100, 100);
    CGContextAddLineToPoint(ctx, 100, 150);
    
    CGContextAddArc(ctx, 100, 100, 50, M_PI_2, M_PI, 0);
    
    CGContextClosePath(ctx);
    [[UIColor blueColor] set];
    
    //    3.渲染显示到view上面
    CGContextStrokePath(ctx);
}
//圆弧
void drawArc()
{
    
    //    1.获得图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //  2. 画圆
    // x\y: 圆心
    // radius: 半径
    // startAngle: 开始角度
    // endAngle: 结束角度
    // clockwise: 圆弧的伸展方向（0:顺时针，1:逆时针）
    
    CGContextAddArc(ctx, 100, 100, 50, -M_PI_2, M_PI_2, 1);
    
    CGContextSetLineWidth(ctx, 10);
    
    //    3.渲染显示到view上面
    CGContextStrokePath(ctx);
}

void drawCircle()
{
    //    1.获得图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //  2. 画圆
    CGContextAddEllipseInRect(ctx, CGRectMake(50, 10, 100, 100));
    
    CGContextSetLineWidth(ctx, 10);
    
    //    3.渲染显示到view上面
    CGContextStrokePath(ctx);
}

@end
