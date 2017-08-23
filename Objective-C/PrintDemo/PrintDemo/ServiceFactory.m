//
//  ServiceFactory.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/23.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "ServiceFactory.h"

@implementation ServiceFactory

+ (instancetype) sharedInstance {
    static ServiceFactory* instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        instance = [ServiceFactory new];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _printService = [PrintService new];
    }
    return self;
}

@end
