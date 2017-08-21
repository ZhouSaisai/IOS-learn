//
//  MVCView.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "MVCView.h"
@interface MVCView()
@property (nonatomic,strong)UIButton* btnPrint;
@end

@implementation MVCView

-(instancetype) init{
    self = [super init];
    if(self){
        self.backgroundColor = [UIColor lightGrayColor];
        self.btnPrint = [UIButton new];
        
        _btnPrint.frame = CGRectMake(100, 100, 100, 50);
        [_btnPrint setTitle:@"print" forState:UIControlStateNormal];
        [_btnPrint setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:_btnPrint];
    }
    return self;
}

-(void) printOnView:(Paper*)paper{
    NSLog(@"print paper content %@",paper.content);
}

-(void) onPrintClick{
    if(_delegate){
        [_delegate onPrintBtnClick];
    }
}

@end
