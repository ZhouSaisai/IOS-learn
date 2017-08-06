//
//  main.m
//  DelegateTest
//
//  Created by 洛洛扥 on 2017/8/3.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FKAppDelegate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKAppDelegate* delegate = [[FKAppDelegate alloc] init];
        NSApplication* app = [NSApplication sharedApplication];
        app.delegate = delegate;
    }
    return NSApplicationMain(argc, argv);
}
