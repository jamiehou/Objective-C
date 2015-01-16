//
//  ViewController.m
//  Case Tool
//
//  Created by Jamie's Air on 15/1/14.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)uppercase {
  NSString *input = _input.text;
  NSString *result = [input uppercaseString];
  [_result setText:result];
}

- (IBAction)lowercase {
  NSString *input = _input.text;
  NSString *result = [input lowercaseString];
  [_result setText:result];
}
@end
