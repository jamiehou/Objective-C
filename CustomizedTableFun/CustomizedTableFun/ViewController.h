//
//  ViewController.h
//  CustomizedTableFun
//
//  Created by Jamie's Air on 15/1/28.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *contacts;

@end

