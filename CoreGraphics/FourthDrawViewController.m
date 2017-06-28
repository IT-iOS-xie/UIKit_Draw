//
//  FourthDrawViewController.m
//  CoreGraphics
//
//  Created by xjw on 2017/6/28.
//  Copyright © 2017年 cn.com.rockmobile.fxmusicians. All rights reserved.
//

#import "FourthDrawViewController.h"

@interface FourthDrawViewController ()

@end

@implementation FourthDrawViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UIGraphicsBeginImageContextWithOptions";
    self.view.backgroundColor = [UIColor whiteColor];
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(200, 200), NO, 0);
    
    UIBezierPath * path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    [[UIColor greenColor] setFill];
    
    [path fill];
    
    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView * imageView=[[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    imageView.image = img;
    
    [self.view addSubview:imageView];
    
    
    
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
