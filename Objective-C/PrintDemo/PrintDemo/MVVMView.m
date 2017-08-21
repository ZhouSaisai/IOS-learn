//
//  MVVMView.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/21.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "MVVMView.h"
#import "FBKVOController.h"
#import "NSObject+FBKVOController.h"


@interface MVVMView()
@property(nonatomic,strong) UILabel* lbContent;
@property (nonatomic,strong)UIButton* btnPrint;
@property (nonatomic,strong) MVVMViewModel* vm;
@end

@implementation MVVMView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setBackgroundColor:[UIColor lightGrayColor]];
        
        self.lbContent = [UILabel new];
        [_lbContent setFrame:CGRectMake(0, 100, 300, 30)];
        [_lbContent setTextAlignment:NSTextAlignmentCenter];
        [_lbContent setTextColor:[UIColor blackColor]];
        [self addSubview:_lbContent];
        
        self.btnPrint = [UIButton new];
        
        _btnPrint.frame = CGRectMake(100, 200, 100, 50);
        [_btnPrint setTitle:@"print" forState:UIControlStateNormal];
        [_btnPrint setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btnPrint];
    }
    
    return self;
}

-(void) setWithViewModel:(MVVMViewModel*) vm{
    _vm = vm;
    [self.KVOController observe:vm keyPath:@"contentStr" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionInitial
    block:^(id observer, id object, NSDictionary<NSKeyValueChangeKey,id> * change) {
        NSString* newContent = change[NSKeyValueChangeNewKey];
        _lbContent.text = newContent;
        
    }];
    
}

-(void) onPrintClick{
    [_vm onPrintClick];
}
@end
