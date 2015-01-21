//
//  ViewController.m
//  ControlFun
//
//  Created by MAC Mini M on 1/21/15.
//  Copyright (c) 2015 ioryz. All rights reserved.
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

- (IBAction)tfDoneEdit:(id)sender {
  [sender resignFirstResponder];
}

- (IBAction)bgTap:(id)sender {
  [_tfName resignFirstResponder];
  [_tfNumber resignFirstResponder];
}

- (IBAction)silderChange:(id)sender {
  UISlider *slider = (UISlider *)sender;
  int sliderValue = (int)roundf(slider.value);
  [_sliderLabel setText:[NSString stringWithFormat:@"%d", sliderValue]];
}

- (IBAction)switchChanged:(id)sender {
  UISwitch *whichSwitch = (UISwitch *)sender;
  BOOL switchValue = whichSwitch.isOn;
  [_switchLeft setOn:switchValue animated:YES];
  [_switchRight setOn:switchValue animated:YES];
}

- (IBAction)buttonPressed:(id)sender {
  UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Are you sure?" delegate:self cancelButtonTitle:@"No!" destructiveButtonTitle:@"Yes, sure!" otherButtonTitles:nil];
  [actionSheet showInView:self.view];
}

- (IBAction)toggleControls:(id)sender {
  if ([sender selectedSegmentIndex] == 0) {
    _switchLeft.hidden = NO;
    _switchRight.hidden = NO;
    _btnDoSth.hidden = YES;
  } else {
    _switchLeft.hidden = YES;
    _switchRight.hidden = YES;
    _btnDoSth.hidden = NO;
  }
}

-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
  if (buttonIndex != [actionSheet cancelButtonIndex]) {
    NSString *msg = nil;
    if (_tfName.text.length > 0) {
      msg = [NSString stringWithFormat:@"You have finished doing something, %@", _tfName.text];
    } else {
      msg = @"You have finished doing something.";
    }
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Someting was done" message:msg delegate:nil cancelButtonTitle:@"Gun!" otherButtonTitles:nil];
    [alert show];
  }
}
@end
