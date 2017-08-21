//
//  Employee.h
//  PrintDemo
//
//  Created by 洛洛扥 on 2017/8/19.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <Foundation/Foundation.h>
//@protocol EmployeePrintDelegate <NSObject>
//- (void) printJobDone;
//@end


@interface Employee : NSObject


+ (instancetype) sharedInstance;
-(void) doprintJob;

//@property(nonatomic,weak) id<EmployeePrintDelegate> delegate;

@end
