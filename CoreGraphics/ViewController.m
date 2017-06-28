//
//  ViewController.m
//  CoreGraphics
//
//  Created by xjw on 2017/6/28.
//  Copyright © 2017年 cn.com.rockmobile.fxmusicians. All rights reserved.
//

#import "ViewController.h"
#import "FristDrawViewController.h"
#import "SecondDrawViewController.h"
#import "ThridDrawViewController.h"
#import "FourthDrawViewController.h"
@interface ViewController()<UITableViewDelegate,UITableViewDataSource>


@property(nonatomic,copy)NSArray * itemArr;
@property(nonatomic,strong)UITableView * tableView;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
        self.title = @"绘图";
    self.itemArr = [NSArray arrayWithObjects:@"UIkit -(void)drawRect:(CGRect)rect",@"- (void)drawInContext:(CGContextRef)ctx", @"- (void)drawLayer:(CALayer*)layer inContext:(CGContextRef)ctx",@"UIGraphicsBeginImageContextWithOptions",nil];
    
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.frame.size.height)];
    
    [self.view addSubview: self.tableView];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
      // Do any additional setup after loading the view, typically from a nib.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;

}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    return self.itemArr.count;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
 
    
    if (cell == nil) {
           cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
  
    cell.textLabel.text = self.itemArr[indexPath.row];
    return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
 FristDrawViewController * fristVc = [[FristDrawViewController alloc]init];
    SecondDrawViewController * secondVc = [[SecondDrawViewController alloc]init];
    ThridDrawViewController * thridVc = [[ThridDrawViewController alloc]init];
    FourthDrawViewController * fourthVc = [[FourthDrawViewController alloc]init];
    switch (indexPath.row) {
        case 0:
           
            [self.navigationController pushViewController:fristVc animated:YES];
            break;
         case 1:
            
            [self.navigationController pushViewController: secondVc animated:YES];
            
            break;
        case 2:
            
            [self.navigationController pushViewController: thridVc animated:YES];
            
            break;
        case 3:
            
            [self.navigationController pushViewController: fourthVc animated:YES];
            
            break;
        default:
            break;
    }
  


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
