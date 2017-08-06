//
//  FKAppDelegate.m
//  DelegateTest
//
//  Created by 洛洛扥 on 2017/8/3.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import "FKAppDelegate.h"

@implementation FKAppDelegate

- (void) applicationWillFinishLaunching:(NSNotification *) notification{
    self.window = [[NSWindow alloc] initWithContentRect:
        NSMakeRect(300, 300 ,320,200)
        styleMask: (NSWindowStyleMaskTitled)
        backing: NSBackingStoreBuffered defer: NO];
    self.window.title = @"Delegate测试";
    NSTextField * label = [[NSTextField alloc] initWithFrame:
                           NSMakeRect(60, 120, 200, 60)];
    
    label.selectable = YES;
    label.bezeled = YES;
    label.drawsBackground =YES;
    label.stringValue = @"djdfkdfjfg";
    
    NSButton * button = [[NSButton alloc] initWithFrame:
        NSMakeRect(120 , 40, 80, 30)];
    button.title =@"确定";
    button.bezelStyle = NSRoundedBezelStyle;
    button.bounds = NSMakeRect(120, 40, 80, 30);
    [self.window.contentView addSubview:label];
    [self.window.contentView addSubview:button];
}

- (void)applicationDidFinishLaunching:(NSNotification *) notification{
    
    [self.window makeKeyAndOrderFront:self];
}


@end
