//
//  AppDelegate.m
//  Lezione_11_Foundation
//
//  Created by Alberto Pasca on 15/11/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (void)dealloc
{
  [_window release];
  [_viewController release];
  [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  
  NSDictionary *dict = 
  [NSDictionary dictionaryWithObjectsAndKeys:@"VAL_00", @"KEY_00", 
                                             @"VAL_01", @"KEY_01", nil];
  
  NSMutableDictionary *mutDict = 
  [NSMutableDictionary dictionaryWithObjectsAndKeys:@"VAL_00", @"KEY_00", 
                                                    @"VAL_01", @"KEY_01", nil];
  
  [mutDict setValue:@"VAL_99"  forKey:@"KEY_00"];
  [mutDict setObject:@"VAL_02" forKey:@"KEY_02"];
  
  NSLog(@"%@", [dict    objectForKey:@"KEY_00"]);
  NSLog(@"%@", [dict    valueForKey:@"KEY_00"]);  
  NSLog(@"%@", [mutDict objectForKey:@"KEY_00"]);
  NSLog(@"%@", [mutDict valueForKey:@"KEY_00"]);

  
  
  self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
  // Override point for customization after application launch.
  self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
  self.window.rootViewController = self.viewController;
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  /*
   Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
   Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
   */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  /*
   Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
   If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
   */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  /*
   Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
   */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  /*
   Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
   */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  /*
   Called when the application is about to terminate.
   Save data if appropriate.
   See also applicationDidEnterBackground:.
   */
}

@end
