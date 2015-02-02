//
//  ViewController.m
//  CustomizedTableFun
//
//  Created by Jamie's Air on 15/1/28.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import "ViewController.h"
#import "CustomizedTableCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  NSDictionary *row1 = [NSDictionary dictionaryWithObjectsAndKeys:@"Jamie", @"name", @"online", @"state", nil];
  NSDictionary *row2 = [NSDictionary dictionaryWithObjectsAndKeys:@"Zack", @"name", @"offline", @"state", nil];
  NSDictionary *row3 = [NSDictionary dictionaryWithObjectsAndKeys:@"Colleen", @"name", @"busy", @"state", nil];
  NSDictionary *row4 = [NSDictionary dictionaryWithObjectsAndKeys:@"David", @"name", @"playing games...", @"state", nil];
  NSDictionary *row5 = [NSDictionary dictionaryWithObjectsAndKeys:@"Billy", @"name", @"busy", @"state", nil];
  NSDictionary *row6 = [NSDictionary dictionaryWithObjectsAndKeys:@"Jonathan", @"name", @"online", @"state", nil];
  _contacts = [NSArray arrayWithObjects:row1, row2, row3, row4, row5, row6, nil];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return [_contacts count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return 70;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *cellIdentifier = @"CustomizedTableCell";
  static BOOL isRegisted = NO;
  if (!isRegisted) {
    UINib *nib = [UINib nibWithNibName:@"CustomizedTableCell" bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:cellIdentifier];
    isRegisted = YES;
  }
  CustomizedTableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  NSInteger row = [indexPath row];
  NSDictionary *rowData = [_contacts objectAtIndex:row];
  cell.name = [rowData objectForKey:@"name"];
  cell.state = [rowData objectForKey:@"state"];
  return cell;
}

@end
