//
//  ViewController.h
//  ControlFun
//
//  Created by MAC Mini M on 1/21/15.
//  Copyright (c) 2015 ioryz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate>

@property (weak, nonatomic) IBOutlet UITextField *tfName;
@property (weak, nonatomic) IBOutlet UITextField *tfNumber;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISwitch *switchLeft;
@property (weak, nonatomic) IBOutlet UISwitch *switchRight;
@property (weak, nonatomic) IBOutlet UIButton *btnDoSth;

- (IBAction)tfDoneEdit:(id)sender;
- (IBAction)bgTap:(id)sender;
- (IBAction)silderChange:(id)sender;
- (IBAction)switchChanged:(id)sender;
- (IBAction)buttonPressed:(id)sender;
- (IBAction)toggleControls:(id)sender;
@end

