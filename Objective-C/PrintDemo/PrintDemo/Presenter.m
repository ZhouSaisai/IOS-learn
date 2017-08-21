//
//  Presenter.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "Presenter.h"


@interface Presenter() <MVPViewDelegate>



@end

@implementation Presenter


-(void) printTask{
    [_view printOnView:_model.content];
}

-(void) onPrintBtnClick{
    int rand = arc4random()%10;
    _model.content = [NSString stringWithFormat:@"line %d:",rand+1];
    [_view printOnView:_model.content];
}
@end
