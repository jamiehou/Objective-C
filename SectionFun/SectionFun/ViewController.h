//
//  ViewController.h
//  SectionFun
//
//  Created by Jamie's Air on 15/2/2.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSDictionary *names;
@property (strong, nonatomic) NSArray *keys;

@end

