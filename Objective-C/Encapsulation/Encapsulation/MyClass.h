//
//  MyClass.h
//  Encapsulation
//
//  Created by 洛洛扥 on 2017/7/26.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
    //成员变量访问修饰符
    //公有 - 类内外使用，可继承
    @public
    int _classInt;
    //类内使用，不可继承
    @private
    //默认 - 类内使用，可继承
    @protected
    //框架内类内使用
    @package
}
@property(nonatomic,strong)NSString *className;
//方法没有访问修饰符-写在实现类-实现类内使用
- (void) report;
@end
