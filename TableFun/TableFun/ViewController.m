//
//  ViewController.m
//  TableFun
//
//  Created by Jamie's Air on 15/1/26.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  _listData = [NSArray arrayWithObjects:@"Sleepy", @"Sneezy", @"Bashful", @"Happy", @"Doc", @"Grumpy", @"Dopey", @"Thorin", @"Dorin", @"Nori", @"Ori", @"Balin", @"Dwalin", @"Fili", @"Kili", @"Oin", @"Gloin", @"Bifur", @"Bofur", @"Bombur", nil];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view delegate methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return [_listData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *simpleTableCellIdentifier = @"SimpleTableCellIdentifier";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableCellIdentifier];
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:simpleTableCellIdentifier];
  }
  UIImage *image = [UIImage imageNamed:@"star.png"];
  cell.imageView.image = image;
  UIImage *imageHighlighted =  [UIImage imageNamed:@"star2.png"];
  cell.imageView.highlightedImage = imageHighlighted;
  NSInteger row = [indexPath row];
  cell.textLabel.text = [_listData objectAtIndex:row];
  cell.textLabel.font = [UIFont boldSystemFontOfSize:30];
  if (row < 7) {
    cell.detailTextLabel.text = @"Mr. Jamie";
  } else {
    cell.detailTextLabel.text = @"Mrs. ZLL";
  }
  return cell;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
  NSInteger r = [indexPath row];
  int s = r % 2;
  if (s == 0) {
    return 0;
  } else {
    return 4;
  }
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  NSInteger row = [indexPath row];
  if (row == 0) {
    return nil;
  }
  return indexPath;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  NSString *selected = [_listData objectAtIndex:[indexPath row]];
  NSString *msg = [NSString stringWithFormat:@"You selected %@", selected];
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Select Cell" message:msg delegate:nil cancelButtonTitle:@"OK, I know" otherButtonTitles:nil];
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
  [alert show];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return 100;
}
@end
