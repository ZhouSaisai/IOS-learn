//
//  Employee.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "Employee.h"
#import "PrintNotification.h"

@implementation Employee

+ (instancetype) sharedInstance {
    static Employee* instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        instance = [Employee new];
    });
    return instance;
}

-(instancetype) init{
    self = [super init];
    if(self){
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doprintJob) name:Notif_BeginPrintTask object:nil];
    }
    return self;
}

- (void) doprintJob{
    NSLog(@"doing print job!");
//    if(_delegate){
//        [_delegate printJobDone];
//    }
    [[NSNotificationCenter defaultCenter] postNotificationName:Notif_PrintTaskDone object:nil];
    
}

@end
