//
//  ViewController.h
//  Case Tool
//
//  Created by Jamie's Air on 15/1/14.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *input;
@property (weak, nonatomic) IBOutlet UILabel *result;
- (IBAction)uppercase;
- (IBAction)lowercase;

@end

