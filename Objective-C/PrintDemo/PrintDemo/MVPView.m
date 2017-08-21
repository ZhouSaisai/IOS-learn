//
//  MVPView.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "MVPView.h"

@interface MVPView()
@property(nonatomic,strong) UILabel* lbContent;
@property (nonatomic,strong)UIButton* btnPrint;
@end

@implementation MVPView


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setBackgroundColor:[UIColor lightGrayColor]];
        
        self.lbContent = [UILabel new];
        [self addSubview:_lbContent];
        [_lbContent setFrame:CGRectMake(0, 100, 300, 30)];
        [_lbContent setTextAlignment:NSTextAlignmentCenter];
        [_lbContent setTextColor:[UIColor blackColor]];
        
        self.btnPrint = [UIButton new];
        
        _btnPrint.frame = CGRectMake(100, 200, 100, 50);
        [_btnPrint setTitle:@"print" forState:UIControlStateNormal];
        [_btnPrint setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btnPrint];
    }
    
    return self;
}
-(void) printOnView:(NSString*)content{
    [_lbContent setText:content];
//    NSLog(@"print paper content %@"paper.content);
}

-(void) onPrintClick{
    if(_delegate){
        [_delegate onPrintBtnClick];
    }
}

@end
