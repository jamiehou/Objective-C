//
//  TwoComponentViewController.h
//  PickerFun
//
//  Created by Jamie's Air on 15/1/24.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kBreadComponent   0
#define kFillingComponent 1

@interface TwoCompPickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSArray *breadTypes;
@property (strong, nonatomic) NSArray *fillingTypes;

- (IBAction)buttonPressed:(id)sender;
@end
