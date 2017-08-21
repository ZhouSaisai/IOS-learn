//
//  Manager.h
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager : NSObject

+ (instancetype) sharedInstance;

- (void) celebratePrintDone;

- (void) beginPrintTask;
@end
