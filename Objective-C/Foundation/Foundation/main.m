//
//  main.m
//  Foundation
//
//  Created by 洛洛扥 on 2017/8/6.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // OC-C 字符串互转
        char* c = "Hello C";
        NSString *str = @"Hello OC";
        
        NSString *str1 = [NSString stringWithUTF8String:c];
        NSLog(@"str1 = %@ " ,str1);
        NSLog(@"str = %s " ,[str UTF8String]);
        
        //格式化字符串
        int a = 10;
        int b = 20;
        NSString *str2 = [NSString stringWithFormat: @"a = %d, b= %d ",a,b];
        NSLog(@"str2: %@ " ,str2);
        
        //拼接字符串
        NSString *str3 = [str2 stringByAppendingString:str];
        NSLog(@"str3: %@",str3);
        
        //大小写转换
        NSString *as = @"aBcDeFg";
        NSString *bs = [as lowercaseString];
        NSString *cs = [as uppercaseString];
        NSLog(@"bs = %@, cs=%@ ",bs,cs);
        
        //前后缀
        BOOL hasPrefix = [as hasPrefix:@"aBc"];
        BOOL hasSuffix = [as hasSuffix:@"Fg"];
        NSLog(@"Presult = %d , Sresult = %d ",hasPrefix,hasSuffix);
        
        //判断字符串
        BOOL same = [str isEqualToString:as];
        NSLog(@"result = %d",same);
        
        //分割字符串
        NSString *str4 =@"a,b,c,d";
        NSArray *array = [str4 componentsSeparatedByString:@","];
        
        for(NSString *s in array){
            NSLog(@"s = %@",s);
        }
        
        //截取字符串
        NSRange range = NSMakeRange(1, 5);
        NSString *str5 = [str4 substringWithRange:range];
        NSLog(@"%@",str5);
        
        NSString *str6 = [str4 substringFromIndex:2];
        NSLog(@"%@",str6);
        
        NSString *str7 = [str4 substringToIndex:6];
        NSLog(@"%@",str7);

        //查找
        NSRange range1 = [str4 rangeOfString:@"b,c"];
        NSLog(@"%ld,%ld",range1.location, range1.length);
        
        //替换
        NSString* str8 = [str4 stringByReplacingCharactersInRange:NSMakeRange(0, 2) withString:@"AAA"];
        NSLog(@"%@",str8);
        NSString* str9 = [str4 stringByReplacingOccurrencesOfString:@"a,b" withString:@"A+B"];
        NSLog(@"%@",str9);
        
        //读取文件
//        NSString* str10 = @"www.baidu.com";
//        NSURL *httpUrl = [NSURL URLWithString:str10];
//        NSURL *localUrl = [NSURL fileURLWithPath:str10];
//        NSString *httpStr = [NSString stringWithContentsOfURL:httpUrl encoding:NSUTF8StringEncoding error:nil];
//        NSString *fileStr = [NSString stringWithContentsOfFile:@"/Desktop/read.txt" encoding:NSUTF8StringEncoding error:nil];
        
        //写入文件
        NSString* str11 = @"www.baidu.com";
        [str11 writeToFile:@"demo.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
        
        //可变字符串
        NSMutableString *mStr = [[NSMutableString alloc]initWithCapacity:10];
        [mStr setString:@"Hello"];
        
        //追加字符串
        [mStr appendString:@" world"];
        int aa = 10;
        [mStr appendFormat:@" aa=%d",aa];
        
        //替换字符串
        [mStr replaceCharactersInRange:NSMakeRange(1, 5) withString:@"你好"];
        
        //插入字符串
        [mStr insertString:@"ABC" atIndex:5];
        
        //删除字符串
        [mStr deleteCharactersInRange:NSMakeRange(1, 6)];
        
        
        //NSArray-只能放对象，但可以是不同的对象
        NSArray *array1 = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",nil];
        NSLog(@"count: %lu",array1.count);
        [array1 containsObject:@"2"];
        NSLog(@"last : %@",[array1 lastObject]);
        NSLog(@"first : %@",[array1 firstObject]);
        NSLog(@"object : %@",[array1 objectAtIndex:2]);
        NSLog(@"index : %lu",[array1 indexOfObject:@"2"]);
        
        //数组的遍历
        //1.for循环
        for(int i=0;i<array1.count;i++){
            NSLog(@"i: %@",[array1 objectAtIndex:i]);
        }
        //2.for in
        for(NSString* str in array1){
            NSLog(@"%@",str);
        }
        
        //NSMutableArray
        NSMutableArray *array2 = [[NSMutableArray alloc] init];
        
        //添加元素
        [array2 addObjectsFromArray:array1];
        [array2 addObject:@"123"];
        NSLog(@"%@",array2);
        
        //删除元素
        [array2 removeObjectAtIndex:2];
        [array2 removeLastObject];
        [array2 removeObject:@"2"];
        [array2 removeAllObjects];
        
        //交换元素
//        [array2 exchangeObjectAtIndex:1 withObjectAtIndex:2];
        
        
        //NSDictionary 字典 内存不连续
        NSDictionary *dic = [NSDictionary dictionaryWithObject:@"a" forKey:@"first"];
        NSLog(@"%@",dic);
        
        NSDictionary *dic1 = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"a",@"b",@"c", nil] forKeys:[NSArray arrayWithObjects:@"1",@"2",@"3",nil]];
        NSLog(@"%@",dic1);
        
        NSDictionary *dic2 = @{@"1":@"2",@"3":@"4"};
        NSLog(@"%@",dic2);
        
        NSString* val = [dic2 valueForKey:@"1"];
        NSLog(@"%@",val);
        
        NSArray *all = [dic2 allValues];
        NSLog(@"%@",all);
        
        
        //遍历字典
        for(NSString* key in dic2){
            NSLog(@"%@", [dic2 valueForKey:key]);
        }
        
        NSMutableDictionary *mdic = [[NSMutableDictionary alloc] init];
        [mdic setObject:@"a" forKey:@"1"];
        [mdic removeObjectForKey:@"1"];
        [mdic removeAllObjects];
        [mdic removeObjectsForKeys:[NSArray arrayWithObjects:@"1",@"2",nil]];
    }
    return 0;
}



