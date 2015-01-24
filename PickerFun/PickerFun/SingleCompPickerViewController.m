//
//  SecondViewController.m
//  PickerFun
//
//  Created by Jamie's Air on 15/1/24.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import "SingleCompPickerViewController.h"

@interface SingleCompPickerViewController ()

@end

@implementation SingleCompPickerViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  _pickData = [[NSArray alloc] initWithObjects:@"Jamie", @"Zack", @"Colleen", @"Billy", @"Jonathan", @"Matt", nil];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
  NSInteger row = [_picker selectedRowInComponent:0];
  NSString *selected = [_pickData objectAtIndex:row];
  NSString *title = [NSString stringWithFormat:@"You selected %@", selected];
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:@"This is the one you selected!" delegate:nil cancelButtonTitle:@"OK, thanks!" otherButtonTitles:nil];
  [alert show];
}

#pragma mark - 
#pragma mark Picker view data source methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
  return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
  return [_pickData count];
}

#pragma mark -
#pragma mark Picker delegate methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
  return [_pickData objectAtIndex:row];
}
@end
