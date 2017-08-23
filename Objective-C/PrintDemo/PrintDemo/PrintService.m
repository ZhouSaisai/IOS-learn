//
//  PrintService.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/23.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "PrintService.h"


@implementation PrintService

-(MVPModel*) getPrintModel{
    MVPModel* model = [[DataFactory sharedInstance].printDao getPrintModel];
    return model;
}
@end
