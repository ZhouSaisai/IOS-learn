//
//  ViewController.h
//  HelloIOS
//
//  Created by 洛洛扥 on 2017/8/15.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *myTitle;
- (IBAction)confirm:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *login;


@end

