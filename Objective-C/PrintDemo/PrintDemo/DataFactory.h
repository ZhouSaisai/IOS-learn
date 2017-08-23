//
//  DataFactory.h
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/23.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrintDAO.h"

@interface DataFactory : NSObject

+ (instancetype) sharedInstance;
@property(nonatomic,strong) PrintDAO* printDao;

@end
