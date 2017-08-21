//
//  MVCView.h
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Paper.h"


@protocol MVCViewDelegate <NSObject>

-(void) onPrintBtnClick;

@end


@interface MVCView : UIView

@property(nonatomic,weak) id<MVCViewDelegate> delegate;
-(void) printOnView:(Paper*)paper;
@end
