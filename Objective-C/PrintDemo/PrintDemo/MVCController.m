//
//  MVCController.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "MVCController.h"
#import "MVCView.h"
#import "Paper.h"

@interface MVCController() <MVCViewDelegate>

@property (nonatomic,strong) MVCView* myView;
@property (nonatomic,strong) Paper* paper;

@end

@implementation MVCController

- (void) viewDidLoad{
    [super viewDidLoad];
    self.myView = [MVCView new];
    _myView.frame = self.view.bounds;
    _myView.delegate = self;
    [self.view addSubview:_myView];
    
    self.paper = [Paper new];
    _paper.content = @"减肥的女接口的";
    [self printPaper];
}

-(void) printPaper{
    [self.myView printOnView:self.paper];
    
}

-(void) onPrintBtnClick{
    int rand = arc4random()%10;
    _paper.content = [NSString stringWithFormat:@"line %d:",rand+1];
    [_myView printOnView:_paper];
}
@end
