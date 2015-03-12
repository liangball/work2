//
//  MJTextImageView.m
//  0413-01基本图形绘制
//
//  Created by Yin Liang on 2015-03-07.
//  Copyright (c) 2015 Yin Liang. All rights reserved.
//

#import "MJTextImageView.h"

@implementation MJTextImageView
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
    drawImage();
}

void drawImage()
{
    UIImage *image = [UIImage imageNamed:@"me"];
    
//    [image drawAtPoint:CGPointMake(50, 50)];
//    [image drawInRect:CGRectMake(0, 0, 150, 150)];
    
    // 画格子
    [image drawAsPatternInRect:CGRectMake(0, 0, 200, 200)];
    
    //3. 画文字
    NSString *str = @"为＊＊＊所画";
    [str drawInRect:CGRectMake(0, 180, 100, 30) withAttributes:nil];
    
}
void drawText()
{
    
    //    1.获得图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //  2. 画矩形
    CGRect cubeRect = CGRectMake(50, 50, 100, 100);
    CGContextAddRect(ctx, cubeRect);
    
    //    3.渲染显示到view上面
    CGContextFillPath(ctx);
    
    
    NSString *str = @"ak,sfopwelds[pwekl;dfmjpwfmop";
    //    [str drawAtPoint:CGPointZero withAttributes:nil];
    
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    // NSForegroundColorAttributeName 文字颜色
    // NSFontAttributeName ： 字体
    attrs[NSForegroundColorAttributeName] = [UIColor redColor];
    [str drawInRect:cubeRect withAttributes:attrs];
}


@end
