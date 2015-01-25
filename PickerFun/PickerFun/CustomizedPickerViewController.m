//
//  CustomizedPickerViewController.m
//  PickerFun
//
//  Created by Jamie's Air on 15/1/24.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import "CustomizedPickerViewController.h"

@interface CustomizedPickerViewController ()

@end

@implementation CustomizedPickerViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self initDate];
  srandom(time(NULL));
}

- (void)initDate {
  UIImage *apple = [UIImage imageNamed:@"apple.png"];
  UIImage *bar = [UIImage imageNamed:@"bar.png"];
  UIImage *cherry = [UIImage imageNamed:@"cherry.png"];
  UIImage *crown = [UIImage imageNamed:@"crown.png"];
  UIImage *lemon = [UIImage imageNamed:@"lemon.png"];
  UIImage *seven = [UIImage imageNamed:@"seven.png"];
  
  for (int i = 1; i <= 5; i++) {
    UIImageView *appleView = [[UIImageView alloc] initWithImage:apple];
    UIImageView *barView = [[UIImageView alloc] initWithImage:bar];
    UIImageView *cherryView = [[UIImageView alloc] initWithImage:cherry];
    UIImageView *crownView = [[UIImageView alloc] initWithImage:crown];
    UIImageView *lemonView = [[UIImageView alloc] initWithImage:lemon];
    UIImageView *sevenView = [[UIImageView alloc] initWithImage:seven];
    NSArray *imageViewArray = [[NSArray alloc] initWithObjects:appleView, barView, cherryView, lemonView, crownView, sevenView, nil];
    NSString *fieldName = [NSString stringWithFormat:@"column%d", i];
    [self setValue:imageViewArray forKey:fieldName];
  }
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
  BOOL win = NO;
  int numInRow = 1;
  int lastVal = -1;
  for (int i=0; i < 5; i++) {
    int newVal = random() % [_column1 count];
    if (newVal == lastVal) {
      numInRow++;
    } else {
      numInRow = 1;
    }
    lastVal = newVal;
    [_picker selectRow:newVal inComponent:i animated:YES];
    if (numInRow >= 3) {
      win = YES;
    }
    [_picker reloadAllComponents];
    if (win) {
      _resultLabel.text = @"Win!";
    } else {
      _resultLabel.text = @"Why not try it again? :)";
    }
  }
}

#pragma mark - Picker view methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
  return 5;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
  return [_column1 count];
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
  NSString *arrayName = [NSString stringWithFormat:@"column%ld", component+1];
  NSArray *array = [self valueForKey:arrayName];
  return  [array objectAtIndex:row];
}
@end
