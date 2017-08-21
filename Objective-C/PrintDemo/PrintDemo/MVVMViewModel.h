//
//  MVVMViewModel.h
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/20.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMPaper.h"

@interface MVVMViewModel : NSObject

@property(nonatomic,strong) NSString* contentStr;

-(void) setWithModel:(MVVMPaper*) model;
-(void) onPrintClick;
@end
