//
//  ViewController.m
//  0414_03图片水印
//
//  Created by Yin Liang on 2015-03-12.
//  Copyright (c) 2015 Yin Liang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *bgImage = [UIImage imageNamed:@"scene"];
    
    //上下文：基于位图（bitmap），所有东西需要绘制到一张新的图片上去。
//    1.创建一个基于位图的上下文（开启一个基于位图的上下文）
    // size ：新图片的尺寸
    //opaque:YES：不透明，NO：透明
//    这行代码过后，就相当于常见一张新的bitmap，也就是新的UIImage对象
    
    UIGraphicsBeginImageContextWithOptions(bgImage.size, NO, 0.0);
    
//    2. 画背景
    [bgImage drawInRect:CGRectMake(0,0, bgImage.size.width, bgImage.size.height)];
    
//    3. 画右下角的水印
    UIImage *waterImage = [UIImage imageNamed:@"logo"];
    CGFloat margin = 5;
    CGFloat waterW = waterImage.size.width * 0.2;
    CGFloat waterH = waterImage.size.height * 0.2;
    CGFloat waterX = bgImage.size.width - waterW - margin;
    CGFloat waterY = bgImage.size.height - waterH - margin;
    [waterImage drawInRect:CGRectMake(waterX, waterY, waterW, waterH)];
    
    // 4.从上下文中获取制作完毕的uiimage对象
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
//    5. 结束上下文
    UIGraphicsEndImageContext();
    
//    6.显示到UIImageView
    self.iconView.image = newImage;
    
//    7. 将image对象压缩为PNG格式的二进制
//    UIImageJPEGRepresentation(<#UIImage *image#>, <#CGFloat compressionQuality#>)
    NSDate *data = UIImagePNGRepresentation(newImage);
    
    NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"new.png"];
    
    
    
//    [data writeToFile:path atomically:YES ];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
