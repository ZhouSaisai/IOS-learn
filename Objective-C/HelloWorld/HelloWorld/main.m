//
//  main.m
//  HelloWorld
//
//  Created by 洛洛扥 on 2017/7/22.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //实例化对象
        /*
         [类名 方法名]
         [对象名 方法名]
         alloc - 为对象分配内存空间
         init 进行初始化操作
         */
        People *p1 = [[People alloc] init];
        NSLog(@"p:%@",p1);
        p1.name = @"zhangsan";
        
//        [p1 setName:@"lieei"];
//        NSLog(@"pname:%@",p1.name);
//        NSLog(@"pname:%@",[p1 getName]);
        
//        
//        [p1 report];
//        [People report1];
        
        int a1= [p1 showA:10];
        NSLog(@"a1= %d",a1);
        int a2= [p1 showA:10 andB:20];
        NSLog(@"a2= %d",a2);
    }

    return 0;
}
