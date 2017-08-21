//
//  ViewController.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "ViewController.h"
#import "MVCController.h"
#import "MVPController.h"
#import "MVVMController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self showMVVM];
    });
//    [[Manager sharedInstance] beginPrintTask];
}

- (void) showMVC{
    MVCController * c = [MVCController new];
    [self presentViewController:c animated:true completion:nil];
}

- (void) showMVP{
    MVPController * c = [MVPController new];
    [self presentViewController:c animated:true completion:nil];
}

- (void) showMVVM{
    MVVMController * c = [MVVMController new];
    [self presentViewController:c animated:true completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
