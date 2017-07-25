//
//  People.h
//  HelloWorld
//
//  Created by 洛洛扥 on 2017/7/25.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <Foundation/Foundation.h>

//类内-成员变量，类外-属性
@interface People : NSObject
//{
//    NSString* _name;
//    int _age;
//    int _sex;
//}
//属性-类外访问成员变量-外部接口
@property(nonatomic,strong)NSString* name;
//- (void)setName:(NSString *)name;
//- (NSString*)getName;

@end
