//
//  ViewController.m
//  CodeDemo
//
//  Created by zhangming on 2018/5/3.
//  Copyright © 2018年 zhangming. All rights reserved.
//

#import "ViewController.h"
#import "CodeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    CodeFig *fig = [[CodeFig alloc] init];
    fig.inputNum = 4;
    fig.fixedSpacing = 15;
    fig.tailSpacing = 50;
    fig.leadSpacing = 50;
    fig.borColor = [UIColor blackColor];
    fig.borHeight = 70;
    fig.font = [UIFont boldSystemFontOfSize:25];
    
    CodeView *view = [[CodeView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100) andFig:fig];
    view.finishBlock = ^(NSString *code) {
        NSLog(@"%@",code);
    };
    [self.view addSubview:view];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
