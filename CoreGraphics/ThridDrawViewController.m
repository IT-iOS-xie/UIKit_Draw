//
//  ThridDrawViewController.m
//  CoreGraphics
//
//  Created by xjw on 2017/6/28.
//  Copyright © 2017年 cn.com.rockmobile.fxmusicians. All rights reserved.
//

#import "ThridDrawViewController.h"


@interface thridDrawLayerDelegate : NSObject

@end



@implementation thridDrawLayerDelegate

#pragma mark ---- UIKIt
- (void)drawLayer:(CALayer*)layer inContext:(CGContextRef)ctx {
    
    UIGraphicsPushContext(ctx);
    
    UIBezierPath* p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0,0,100,100)];
    
    [[UIColor blueColor] setFill];
    
    [p fill];
    
    UIGraphicsPopContext();
}

#pragma mark --- coreGraphics
//- (void)drawLayer:(CALayer*)layer inContext:(CGContextRef)ctx {
//
//    CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 100, 100));
//    CGContextSetFillColorWithColor(ctx, [UIColor blueColor].CGColor);
//    CGContextFillPath(ctx);
//
//
//}
@end

@interface ThridDrawViewController ()

{
    CALayer * _layer;
     thridDrawLayerDelegate *_layerDeleagete;
    
}
@end

@implementation ThridDrawViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"drawLayer:(CALayer*)layer inContext:(CGContextRef)ctx";
    self.view.backgroundColor = [UIColor whiteColor];
    
    _layerDeleagete = [[thridDrawLayerDelegate alloc] init];
    
    //1.创建自定义的layer
    _layer=[CALayer layer];
    //2.设置layer的属性
    _layer.backgroundColor= [UIColor blackColor].CGColor;
    _layer.frame=CGRectMake(100, 100, 200, 200);
    
    _layer.delegate = _layerDeleagete;
    [_layer setNeedsDisplay];
    
    //3.添加layer
    [self.view.layer addSublayer:_layer];
}



-(void)dealloc{

    _layer.delegate = nil;
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
