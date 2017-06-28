//
//  FristDrawViewController.m
//  CoreGraphics
//
//  Created by xjw on 2017/6/28.
//  Copyright © 2017年 cn.com.rockmobile.fxmusicians. All rights reserved.
///   UIKit绘图

#import "FristDrawViewController.h"
@interface oneView : UIView

@end



@implementation oneView

#pragma mark ----- uikit
-(void)drawRect:(CGRect)rect{
    ///绘制正方形路径
    //    UIBezierPath * path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 50, 50)];
    
    ///  绘制直径为50的圆
    //    UIBezierPath * path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 50, 50)];
    
    /// 绘制宽高为50，边角弧度为10的弧边矩形
    //    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 50, 50) cornerRadius:10];
    
    /// 绘大小为RoundedRect 的矩形，圆角切弧为cornerRadii    位置在UIRectCornerBottomRight
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 10, 50, 50) byRoundingCorners:UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 5)];
    ///绘制以（0，0）为圆心，半径为40，角度从0.2到0.5的圆弧，closewise为圆弧边是否封闭
    //    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(0, 0) radius:40 startAngle:0.2 endAngle:0.5 clockwise:NO];
    [[UIColor blueColor]setFill];
    
    [path fill];
    
}
#pragma mark -----CoreGraphics
//- (void)drawRect:(CGRect)rect{
//    //当前上下文及画布为当前view
//    CGContextRef con = UIGraphicsGetCurrentContext();
//    
//    CGContextAddEllipseInRect(con, CGRectMake(0,0,100,100));
//    
//    CGContextSetFillColorWithColor(con, [UIColor blueColor].CGColor);
//    
//    CGContextFillPath(con);
//}
@end
@interface FristDrawViewController ()

@end

@implementation FristDrawViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"drawRect";
    self.view.backgroundColor = [UIColor whiteColor];
    oneView * oneview = [[oneView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    
    oneview.backgroundColor = [UIColor redColor];
    [self.view addSubview:oneview];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
