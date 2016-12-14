//
//  ViewController.m
//  LeoRadioButtonDemo
//
//  Created by 陈仕军 on 16/12/14.
//  Copyright © 2016年 Leo.Chen. All rights reserved.
//

#import "ViewController.h"
#import "LeoRadioButton.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    LeoRadioButton *btn1 = [[LeoRadioButton alloc] initWithFrame:CGRectMake(100, 100, 25, 29)];
    btn1.normalImage = [UIImage imageNamed:@"ic_no_collection"];
    btn1.selectImage = [UIImage imageNamed:@"ic_collection"];
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(valueChangeFunc:) forControlEvents:UIControlEventValueChanged];
    
    
    
    LeoRadioButton *btn2 = [[LeoRadioButton alloc] initWithFrame:CGRectMake(100, 200, 17, 17)];
    btn2.normalImage = [UIImage imageNamed:@"ic_progress_dot_unfinished"];
    btn2.selectImage = [UIImage imageNamed:@"ic_progress_dot_done"];
    [self.view addSubview:btn2];
    [btn2 addLeoRadioButtonChangeBlock:^(LeoRadioButton *radioButton, BOOL on) {
        
        NSLog(@"btn2 on is %@", [NSNumber numberWithBool:on]);
        
    }];
    
    
    
    
}


- (void)valueChangeFunc:(LeoRadioButton *)button
{
    NSLog(@"btn1 on is %@", [NSNumber numberWithBool:button.on]);
}







- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
