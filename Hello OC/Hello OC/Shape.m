//
//  Shape.m
//  Hello OC
//
//  Created by MAC Mini M on 12/1/14.
//  Copyright (c) 2014 Augmentum. All rights reserved.
//

#import "Shape.h"

@implementation Shape

- (void)setFillColor:(ShapeColor)c {
  fillColor = c;
}

- (void)setBounds:(ShapeRect)b {
  bounds = b;
}

- (void)draw {
  
}

- (NSString *)getColorName:(ShapeColor)color {
  switch (color) {
    case kBlueColor:
      return @"Blue";
      break;
    case kGreenColor:
      return @"Green";
      break;
    case kRedColor:
      return @"Red";
      break;
    case kYellowColor:
      return @"Yellow";
      break;
    default:
      return @"N/A";
      break;
  }
}

@end
