//
//  ViewController.m
//  MySegement
//
//  Created by apple on 16/7/31.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "TYQSegemengt.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TYQSegemengt *tyq = [[TYQSegemengt alloc]initWithArray:@[@"haha",@"hehe",@"kaka"]];
    tyq.frame = CGRectMake(0, 100, self.view.frame.size.width, 20);
    tyq.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:tyq];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
