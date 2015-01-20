//
//  ViewController.m
//  ButtonFun
//
//  Created by Jamie's Air on 15/1/20.
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

- (IBAction)updateLabel:(id)sender {
  NSString *title = [sender titleForState:UIControlStateNormal];
  _result.text = [NSString stringWithFormat:@"%@ button is clicked", title];
}
@end
