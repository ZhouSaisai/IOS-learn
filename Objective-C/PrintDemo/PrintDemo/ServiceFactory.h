//
//  ServiceFactory.h
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/23.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrintService.h"

@interface ServiceFactory : NSObject

+ (instancetype) sharedInstance;
@property(nonatomic,strong) PrintService* printService;
@end
