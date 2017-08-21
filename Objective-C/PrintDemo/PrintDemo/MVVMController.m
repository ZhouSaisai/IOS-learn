//
//  MVVMController.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/20.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "MVVMController.h"
#import "MVVMPaper.h"
#import "MVVMViewModel.h"
#import "MVVMView.h"

@interface MVVMController()
@property (nonatomic,strong) MVVMViewModel* model;
@property (nonatomic,strong) MVVMView* mvvmView;
@property (nonatomic,strong) MVVMPaper* paper;
@end

@implementation MVVMController

- (void) viewDidLoad{
    [super viewDidLoad];
    
    self.paper = [MVVMPaper new];
    _paper.content = @"mvvm first";

    self.model = [MVVMViewModel new];
    
    self.mvvmView = [MVVMView new];
    _mvvmView.frame = self.view.bounds;
    [self.view addSubview:_mvvmView];
    
    [_model setWithModel:_paper];
    [_mvvmView setWithViewModel:_model];
    
}
@end
