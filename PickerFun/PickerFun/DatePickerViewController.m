//
//  FirstViewController.m
//  PickerFun
//
//  Created by Jamie's Air on 15/1/24.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()

@end

@implementation DatePickerViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  NSDate *now = [NSDate date];
  [_datePicker setDate:now animated:NO];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
  NSDate *date = [_datePicker date];
  NSString *msg = [NSString stringWithFormat:@"The date you selected is %@", date];
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Date" message:msg delegate:nil cancelButtonTitle:@"Yes" otherButtonTitles:nil];
  [alert show];
}
@end
