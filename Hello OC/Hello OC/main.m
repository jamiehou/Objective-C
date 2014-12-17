#import <Foundation/Foundation.h>
#import "Circle.h"


BOOL areIntsDifferent(int int1, int int2) {
  if (int1 == int2) {
    return NO;
  } else {
    return YES;
  }
}

NSString *boolString(BOOL b) {
  if (b) {
    return @"YES";
  } else {
    return @"NO";
  }
}

void testBOOL() {
  int int1 = 4;
  int int2 = 5;
  BOOL b = areIntsDifferent(int1, int2);
  NSLog(@"Are int %d and %d different? => %@", int1, int2, boolString(b));
  int1 = 10;
  int2 = 10;
  b = areIntsDifferent(int1, int2);
  NSLog(@"Are int %d and %d different? => %@", int1, int2, boolString(b));
}

void testFileIndrection() {
  
  FILE *file = fopen("/tmp/names.rtf", "r");
  char word[100];
  while (fgets(word, 100, file)) {
    word[strlen(word) - 1] = '\0';
    NSLog(@"Name \"%s\" length is %lu.", word, strlen(word));
  }
  fclose(file);
}

void testShape() {
  id shape = [Circle new];
  [shape setFillColor:kYellowColor];
  ShapeRect b = {0, 0, 10, 10};
  [shape setBounds:b];
  [shape draw];
}

void testOrder() {
  NSLog(@"NSOrderedAscending=%ld NSOrderedSame=%ld NSOrderedDescending=%ld", (long)NSOrderedAscending, (long)NSOrderedSame, (long)NSOrderedDescending);
  // Just test the 3 order calculator, ignore the logic issue O.O
  NSLog(@"Compare 'dad' with 'Dad', result is=>%@", [@"dad" compare:@"Dad"] == NSOrderedDescending ? @"Descending" : @"Ascending");
}

void testStringContains() {
  NSLog(@"Does 'testDemo' contains prefix 'test'? => %@", [@"testDemo" hasPrefix:@"test"] ? @"YES" : @"NO");
  NSLog(@"Does 'test.mp4' contains suffix '.mp4'? => %@", [@"test.mp4" hasSuffix:@".mp4"] ? @"YES" : @"NO");
  NSRange range =[@"Jamie Hou" rangeOfString:@"jamie" options:NSCaseInsensitiveSearch];
  NSLog(@"Does 'Jamie Hou' contains 'jamie'? => %@", range.location != NSNotFound ? @"YES" : @"NO");
  if (range.location != NSNotFound) {
    NSLog(@"Range is => (%lu, %lu)", range.location, range.length);
  }
  range = [@"Zack Liu" rangeOfString:@"zck" options:NSCaseInsensitiveSearch];
  NSLog(@"Does 'Zack Liu' contains 'zck'? => %@", range.location != NSNotFound ? @"YES" : @"NO");
}

void testMutableString() {
  NSString *str = @"I like ";
  NSMutableString *mstr = [NSMutableString stringWithString:str];
  [mstr appendString:@"Jamie"];
  NSLog(@"mstr=>%@", mstr);
  [mstr appendFormat:@", %@, %@", @"Colleen", @"Billy"];
  NSLog(@"mstr=>%@", mstr);
  [mstr deleteCharactersInRange:[mstr rangeOfString:@", Colleen"]];
  NSLog(@"mstr=>%@", mstr);
}

void testArray() {
  NSMutableArray *array = [NSMutableArray arrayWithCapacity:10];
  int i = 0;
  while(i < 15) {
    [array addObject:[NSString stringWithFormat:@"%d", i]];
    i++;
  }
  NSLog(@"Array length is %lu", (unsigned long)[array count]);
//  NSEnumerator *enumrator = [array objectEnumerator];
//  id thingId;
//  while(thingId = [enumrator nextObject]) {
//    NSLog(@"Found object %@", thingId);
//  }
//  for(NSString *str in array) {
//    NSLog(@"Found string object => %@", str);
//  }
  [array enumerateObjectsUsingBlock:^(NSString *str, NSUInteger idx, BOOL *stop) {
    NSLog(@"Using block finding string object => %@", str);
  }];
}

void testDictionary() {
  NSDictionary *dic = @{@"name":@"Jamie", @"age":@29, @"height":@173};
  NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary:dic];
  [mDic setObject:@"Male" forKey:@"sex"];
  [mDic removeObjectForKey:@"age"];
  [mDic setObject:@175 forKey:@"height"];
  NSEnumerator *enumerator = [mDic keyEnumerator];
  NSString *str;
  while(str = [enumerator nextObject]) {
    NSLog(@"Find object for key %@ in dictionary => %@", str, [mDic objectForKey:str]);
  }
}

void testReadJPGFile() {
  @autoreleasepool {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *home = [@"~" stringByExpandingTildeInPath];
    NSString *picDir = [home stringByAppendingString:@"/Pictures/critical thinking"];
    NSLog(@"home path is %@", picDir);
    NSMutableArray *picArray = [NSMutableArray arrayWithCapacity:20];
    for(NSString *filename in [fileManager enumeratorAtPath:picDir]) {
      if([[filename pathExtension] isEqualToString:@"jpg"]) {
        [picArray addObject:filename];
      }
    }
    for(NSString *name in picArray) {
      NSLog(@"Find file => %@", name);
      NSLog(@"%lu JPG files are found in total.", (unsigned long)[picArray count]);
    }
  }
}

int main (int argc, const char *argv[]) {
  //testBOOL();
  //testFileIndrection();
  //testShape();
  //testOrder();
  //testStringContains();
  //testMutableString();
  //testArray();
  //testDictionary();
  testReadJPGFile();
  return 0;
}