//
//  CustomizedTableCell.m
//  CustomizedTableFun
//
//  Created by Jamie's Air on 15/1/28.
//  Copyright (c) 2015年 Jamie. All rights reserved.
//

#import "CustomizedTableCell.h"

@implementation CustomizedTableCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setName:(NSString *)name {
  if (![name isEqualToString:_name]) {
    _name = [name copy];
    _nameLabel.text = _name;
  }
}

- (void)setState:(NSString *)state {
  if (![state isEqualToString:_state]) {
    _state = [state copy];
    _stateLabel.text = _state;
  }
}

@end
