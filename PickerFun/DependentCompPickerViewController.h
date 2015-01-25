//
//  DependentCompPickerViewController.h
//  PickerFun
//
//  Created by Jamie's Air on 15/1/24.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kStateComponent 0
#define kZipComponent   1

@interface DependentCompPickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSDictionary *stateZips;
@property (strong, nonatomic) NSArray *states;
@property (strong, nonatomic) NSArray *zips;

- (IBAction)buttonPressed:(id)sender;
@end
