//
//  AppDelegate.m
//  CaseDemo
//
//  Created by Jamie's Air on 15/1/13.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
  // Insert code here to tear down your application
}

- (IBAction)uppercase:(id)sender {
  NSString *input = [_textField stringValue];
  NSString *uppercase = [input uppercaseString];
  [_resultField setStringValue:uppercase];
}

- (IBAction)lowercase:(id)sender {
  NSString *input = [_textField stringValue];
  NSString *result = [input lowercaseString];
  [_resultField setStringValue:result];
}
@end
