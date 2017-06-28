//
//  SecondDrawViewController.m
//  CoreGraphics
//
//  Created by xjw on 2017/6/28.
//  Copyright © 2017年 cn.com.rockmobile.fxmusicians. All rights reserved.
//

#import "SecondDrawViewController.h"


@interface myLayer : CALayer

@end


@implementation myLayer
#pragma mark --- UIKit
-(void)drawInContext:(CGContextRef)ctx{

    UIGraphicsPushContext(ctx);
    
    UIBezierPath   * path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, 100, 150)];
    
    [[UIColor greenColor]setFill];
    
    [path fill];
    
    UIGraphicsPopContext();
  

}
#pragma mark -----CoreGraphics
//- (void)drawInContext:(CGContextRef)ctx{
//    
//    CGContextAddEllipseInRect(ctx, CGRectMake(0,0,100,100));
//    
//    CGContextSetFillColorWithColor(ctx, [UIColor blueColor].CGColor);
//    
//    CGContextFillPath(ctx);
//}

@end
@interface SecondDrawViewController ()

@end

@implementation SecondDrawViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"drawInContext";
    self.view.backgroundColor = [UIColor whiteColor];
    myLayer * layer = [myLayer layer];
    
    layer.backgroundColor = [[UIColor redColor]CGColor];
    
    layer.frame = CGRectMake(10, 100, 200,200);
    [layer setNeedsDisplay];
    
    [self.view.layer addSublayer:layer];
    
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
