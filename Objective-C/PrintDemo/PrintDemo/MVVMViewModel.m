//
//  MVVMViewModel.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/20.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "MVVMViewModel.h"
#import "MVVMPaper.h"
@interface MVVMViewModel()
@property(nonatomic,strong) MVVMPaper* paper;
@end

@implementation MVVMViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}


-(void) setWithModel:(MVVMPaper*) model{
    self.paper = model;
    self.contentStr = model.content;
}

-(void) onPrintClick{
    self.contentStr = @"line change";
    self.paper.content = self.contentStr;
}

@end
