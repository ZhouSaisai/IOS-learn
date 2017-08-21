//
//  MVVMView.h
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/21.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVMViewModel.h"

@interface MVVMView : UIView

-(void) setWithViewModel:(MVVMViewModel*) vm;

@end
