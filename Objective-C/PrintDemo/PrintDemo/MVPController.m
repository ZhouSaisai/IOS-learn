//
//  MVPController.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "MVPController.h"
#import "MVPView.h"
#import "Presenter.h"
#import "MVPModel.h"

@interface MVPController()

@property (nonatomic,strong) Presenter* presenter;
@property (nonatomic,strong) MVPView* mvpView;
@property (nonatomic,strong) MVPModel* mvpModel;
@end


@implementation MVPController


- (void) viewDidLoad{
    [super viewDidLoad];
    
    self.presenter = [Presenter new];
    
    self.mvpView = [MVPView new];
    _mvpView.frame = self.view.bounds;
    [self.view addSubview:_mvpView];
    
    self.mvpModel = [MVPModel new];
    _mvpModel.content = @"mvp first";
    
    _presenter.view = _mvpView;
    _presenter.model = _mvpModel;
    
    [_presenter printTask];
    
    _mvpView.delegate = (id)_presenter;
}

@end
