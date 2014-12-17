//
//  Shape.h
//  Hello OC
//
//  Created by MAC Mini M on 12/1/14.
//  Copyright (c) 2014 Augmentum. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
  kRedColor,
  kBlueColor,
  kYellowColor,
  kGreenColor
} ShapeColor;

typedef struct {
  int x, y, width, height;
} ShapeRect;


@interface Shape : NSObject {
  ShapeRect bounds;
  ShapeColor fillColor;
}

- (void)setFillColor:(ShapeColor)fillColor;
- (void)setBounds:(ShapeRect)bounds;
- (void)draw;
- (NSString *)getColorName:(ShapeColor)colorName;

@end
