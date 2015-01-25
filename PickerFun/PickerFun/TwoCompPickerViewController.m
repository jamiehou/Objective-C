//
//  TwoComponentViewController.m
//  PickerFun
//
//  Created by Jamie's Air on 15/1/24.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import "TwoCompPickerViewController.h"

@interface TwoCompPickerViewController ()

@end

@implementation TwoCompPickerViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  _breadTypes = [NSArray arrayWithObjects:@"White", @"Whole Wheat", @"Rye", @"Sourdough", @"Seven Grain", nil];
  _fillingTypes = [NSArray arrayWithObjects:@"Ham", @"Turkey", @"Peanut Butter", @"Tuna Salad", @"Chicken Salad", @"Roast Beef", @"Vegemite", nil];
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
  NSInteger breadRow = [_picker selectedRowInComponent:kBreadComponent];
  NSInteger fillingRow = [_picker selectedRowInComponent:kFillingComponent];
  NSString *bread = [_breadTypes objectAtIndex:breadRow];
  NSString *filling = [_fillingTypes objectAtIndex:fillingRow];
  NSString *msg = [NSString stringWithFormat:@"You have selected bread=>%@ and filling=>%@", bread, filling];
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Double component picker" message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
  [alert show];
}

#pragma mark - Picker view methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
  return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
  if (component == kBreadComponent) {
    return [_breadTypes count];
  }
  return [_fillingTypes count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
  if (component == kBreadComponent) {
    return [_breadTypes objectAtIndex:row];
  }
  return [_fillingTypes objectAtIndex:row];
}

@end
