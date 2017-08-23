//
//  DataFactory.m
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/23.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "DataFactory.h"

@interface DataFactory()

@end

@implementation DataFactory

+ (instancetype) sharedInstance {
    static DataFactory* instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        instance = [DataFactory new];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _printDao =  [PrintDAO new];
    }
    return self;
}

@end
