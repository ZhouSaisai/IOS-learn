//
//  Manager.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "Manager.h"
//#import "Employee.h"
#import "PrintNotification.h"
@implementation Manager

+ (instancetype) sharedInstance {
    static Manager* instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
                  instance = [Manager new];
    });
    return instance;
}


-(instancetype) init{
    self = [super init];
    if(self){
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(celebratePrintDone) name:Notif_PrintTaskDone object:nil];
    }
    return self;
}

- (void) celebratePrintDone{
    NSLog(@"celebrate print done");
}

-(void) beginPrintTask{
    NSLog(@"begin print task");
    [[NSNotificationCenter defaultCenter] postNotificationName:Notif_BeginPrintTask object:nil];
//    [Employee sharedInstance].delegate = self;
//    [[Employee sharedInstance] doprintJob];
}
@end
