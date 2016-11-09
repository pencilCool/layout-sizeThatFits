//
//  ViewController.m
//  FBStoryView
//
//  Created by tangyuhua on 2016/11/9.
//  Copyright © 2016年 tangyuhua. All rights reserved.
//

#import "ViewController.h"
#import "FBStoryView.h"



@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    FBStoryView *fb = [[FBStoryView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:fb];
    [fb sizeThatFits:fb.bounds.size];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
