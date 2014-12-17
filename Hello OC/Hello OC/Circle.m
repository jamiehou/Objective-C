//
//  Circle.m
//  Hello OC
//
//  Created by MAC Mini M on 12/1/14.
//  Copyright (c) 2014 Augmentum. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (void)draw {
  NSLog(@"Drawing circle at (%d %d %d %d) in %@ color.",
        bounds.x, bounds.y, bounds.width, bounds.height, [self getColorName:fillColor]);
  
}

@end
