//
//  PrintDAO.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/23.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "PrintDAO.h"

@implementation PrintDAO

-(MVPModel*) getPrintModel{
    MVPModel* model = [MVPModel new];
    model.content = @"mvp layer";
    return model;
}

@end
