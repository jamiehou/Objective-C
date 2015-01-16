//
//  AppDelegate.h
//  CaseDemo
//
//  Created by Jamie's Air on 15/1/13.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSTextField *resultField;
- (IBAction)uppercase:(id)sender;
- (IBAction)lowercase:(id)sender;

@end

