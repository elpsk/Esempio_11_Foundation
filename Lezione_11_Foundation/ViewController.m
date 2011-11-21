//
//  ViewController.m
//  Lezione_11_Foundation
//
//  Created by Alberto Pasca on 15/11/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void) Length {

  NSString *s = @"abcdefghilmnopqrstuvz";
  int len = [s length];
  NSLog (@"String length %d", len);

}

- (void) Substring {

  NSString *s = @"abcdefghilmnopqrstuvz";
  NSRange match = [s rangeOfString: @"abc"];
  
  if (match.location == NSNotFound) {
    NSLog (@"Match not found");
  } else {
    NSLog (@"match found at index %d", match.location);
    NSLog (@"match length = %d", match.length);
  }

}

- (void) Replace {
  
  NSMutableString *s = [NSMutableString stringWithString:@"abcdefghilmnopqrstuvz"];
  [s replaceCharactersInRange: NSMakeRange(5, 3) withString: @"XXX"];
  NSLog (@"string = %@", s);

}

- (void) SearchReplace {

  NSMutableString *s = [NSMutableString stringWithString:@"abcdefghilmnopqrstuvz"];
  NSLog(@"STRING: %@", s);
  [s replaceCharactersInRange:[s rangeOfString: @"abc"] withString: @"XXX"];
  NSLog(@"STRING: %@", s);

}

- (void) Delete {

  NSMutableString *s = [NSMutableString stringWithString:@"abcdefghilmnopqrstuvz"];
  NSLog(@"STRING: %@", s);
  [s deleteCharactersInRange:[s rangeOfString: @"qrs"]];
  NSLog(@"STRING: %@", s);

}

- (void) Extract {

  NSMutableString *s = [NSMutableString stringWithString:@"abcdefghilmnopqrstuvz"];
  NSString *string;
  string = [s substringWithRange: NSMakeRange (4, 5)];
  NSLog (@"new string = %@", string);

}

- (void) ExtractFromIndex {

  NSMutableString *s = [NSMutableString stringWithString:@"abcdefghilmnopqrstuvz"];
  NSLog(@"STRING: %@", s);
  NSString *string;
  string = [s substringFromIndex: 4];
  NSLog(@"STRING: %@", string);

}

- (void) Insert {

  NSMutableString *s = [NSMutableString stringWithString:@"abcdefghilmnopqrstuvz"];
  NSLog(@"STRING: %@", s);
  [s insertString: @"XXX " atIndex: 4];
  NSLog(@"STRING: %@", s);

}

- (void) Append {

  NSMutableString *s = [NSMutableString stringWithString:@"abcdefghilmnopqrstuvz"];
  NSLog (@"string = %@", s);
  [s appendString: @" alphabet"];
  NSLog (@"string = %@", s);
  
}

- (void) Compare {
  
  NSString *string1 = @"vocals";
  NSString *string2 = @"consonants";
  
  if ([string1 isEqualToString: string2])
    NSLog (@"Strings match");
  else
    NSLog (@"Strings do not match");
  
}

- (void) PrefixSuffix {

  NSString *s = @"abcdefghilmnopqrstuvz";

  BOOL result;
  
  result = [s hasPrefix: @"abc"];
  if (result) NSLog (@"String begins with ABC");
  
  result = [s hasSuffix: @"uvz"];
  if (result) NSLog (@"String ends with UVZ");

}

- (void) UpperLower {
  
  NSString *s = @"abcdefghilmnopqrstuvz";

  NSString *string1 = [s capitalizedString];
  NSLog (@"CAPITALIZED string = %@", s);
  NSLog (@"CAPITALIZED string = %@", string1);

  NSString *string2 = [s lowercaseString];
  NSLog (@"LOWERCASE string = %@", s);
  NSLog (@"LOWERCASE string = %@", string2);
    
  NSString *string3 = [s uppercaseString];
  NSLog (@"UPPERCASE string = %@", s);
  NSLog (@"UPPERCASE string = %@", string3);
  
}

- (void) Convert:(NSString*)s {
  
  int myInt = [s intValue];
  NSLog (@"%d", myInt);
  
  double myDouble = [s doubleValue];
  NSLog (@"%f", myDouble);

  const char *utfString = [s UTF8String];
  NSLog (@"Converted string = %s", utfString);

}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // ********** STRING EXAMPLE **************
  
  [self Length];
  [self Substring];
  [self Replace];
  [self SearchReplace];
  [self Delete];
  [self Extract];
  [self ExtractFromIndex];
  [self Insert];
  [self Append];
  [self Compare];
  [self PrefixSuffix];
  [self UpperLower];
  [self Convert:@"12345"];

  // ***************************************

}

- (void)viewDidUnload {
  [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
