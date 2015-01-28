//
//  CustomizedTableCell.h
//  CustomizedTableFun
//
//  Created by Jamie's Air on 15/1/28.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomizedTableCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *stateLabel;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *state;

- (void)setName:(NSString *)name;
- (void)setState:(NSString *)state;

@end
