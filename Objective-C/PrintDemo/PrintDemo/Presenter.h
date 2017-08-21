//
//  Presenter.h
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPView.h"
#import "MVPModel.h"

@interface Presenter : NSObject

@property (nonatomic,strong) MVPView* view;
@property (nonatomic,strong) MVPModel* model;

-(void) printTask;
@end
