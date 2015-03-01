//
//  ViewController.m
//  SectionFun
//
//  Created by Jamie's Air on 15/2/2.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  NSString *path = [[NSBundle mainBundle] pathForResource:@"sortednames" ofType:@"plist"];
  _names = [NSDictionary dictionaryWithContentsOfFile:path];
  _keys = [[_names allKeys] sortedArrayUsingSelector:@selector(compare:)];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

#pragma mark - Table view delegate and data source method

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return [_keys count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  NSString *key = [_keys objectAtIndex:section];
  NSArray *sectionNames = [_names objectForKey:key];
  return [sectionNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  NSInteger section = [indexPath section];
  NSInteger row = [indexPath row];
  NSString *key = [_keys objectAtIndex:section];
  NSArray *sectionNames = [_names objectForKey:key];
  NSString *name = [sectionNames objectAtIndex:row];
  
  NSString *tableCellIdentifier = @"SectionFunTableCell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableCellIdentifier];
  }
  cell.textLabel.text = name;
  return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
  return [_keys objectAtIndex:section];
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
  return _keys;
}

@end
