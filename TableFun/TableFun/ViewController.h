//
//  ViewController.h
//  TableFun
//
//  Created by Jamie's Air on 15/1/26.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *listData;

@end

