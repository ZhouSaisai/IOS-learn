//
//  main.m
//  Encapsulation
//
//  Created by 洛洛扥 on 2017/7/26.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"
int main(int argc, const
         char * argv[]) {
    @autoreleasepool {
        MyClass* class = [[MyClass alloc]init];
        class.className = @"我的类";
        
        
        class->_classInt =1001;
        
        [class report];
    }
    return 0;
}
