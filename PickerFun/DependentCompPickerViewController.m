//
//  DependentCompPickerViewController.m
//  PickerFun
//
//  Created by Jamie's Air on 15/1/24.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import "DependentCompPickerViewController.h"

@interface DependentCompPickerViewController ()

@end

@implementation DependentCompPickerViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  NSBundle *bundle = [NSBundle mainBundle];
  NSURL *url = [bundle URLForResource:@"statedictionary" withExtension:@"plist"];
  _stateZips = [NSDictionary dictionaryWithContentsOfURL:url];
  NSArray *keys = [_stateZips allKeys];
  _states = [keys sortedArrayUsingSelector:@selector(compare:)];
  _zips = [_stateZips objectForKey:[_states objectAtIndex:0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonPressed:(id)sender {
  NSString *state = [_states objectAtIndex:[_picker selectedRowInComponent:kStateComponent]];
  NSString *zip = [_zips objectAtIndex:[_picker selectedRowInComponent:kZipComponent]];
  NSString *msg = [NSString stringWithFormat:@"Selected state=>%@, zip=>%@", state, zip];
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Dependent picker view" message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
  [alert show];
}

#pragma mark - Picker view methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
  return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
  if (component == kStateComponent) {
    return [_states count];
  }
  return [_zips count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
  if (component == kStateComponent) {
    return [_states objectAtIndex:row];
  }
  return [_zips objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
  if (component == kStateComponent) {
    NSString *state = [_states objectAtIndex:row];
    _zips = [_stateZips objectForKey:state];
    [_picker selectRow:0 inComponent:kZipComponent animated:YES];
    [_picker reloadComponent:kZipComponent];
  }
}

@end
