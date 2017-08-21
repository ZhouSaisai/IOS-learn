//
//  MVPView.h
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MVPViewDelegate <NSObject>

-(void) onPrintBtnClick;

@end

@interface MVPView : UIView

@property(nonatomic,strong) id<MVPViewDelegate> delegate;
-(void) printOnView:(NSString*)content;

@end
