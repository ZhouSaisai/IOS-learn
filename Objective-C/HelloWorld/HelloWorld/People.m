//
//  People.m
//  HelloWorld
//
//  Created by 洛洛扥 on 2017/7/25.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "People.h"

@implementation People
{
    int _age;
    int _sex;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"zhangsam";
    }
    return self;
}

//- (void)setName:(NSString *)name
//{
//    _name = name;
//}
//- (NSString *)getName
//{
//   return _name;
//}

- (void) report{
    NSLog(@"report");
}

+ (void) report1{
     NSLog(@"report1");
}

-(int) showA:(int)a{
    return a;
}
-(int) showA:(int)a andB:(int)b{
    return a+b;
}
@end

