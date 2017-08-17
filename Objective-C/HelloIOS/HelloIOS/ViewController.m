//
//  ViewController.m
//  HelloIOS
//
//  Created by 洛洛扥 on 2017/8/15.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UILabel* label = (UILabel*) [self.view viewWithTag:12];
//    label.text = @"Hello IOS";
    self.myTitle.text = @"Title";
    
    [self.login addTarget:self action:@selector(loginHander:) forControlEvents:UIControlEventTouchUpInside];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)confirm:(UIButton *)sender {
    self.myTitle.text = @"点到了！";
}

- (void)loginHander:(UIButton *)sender {
    self.myTitle.text = @"aaa！";
}
@end
