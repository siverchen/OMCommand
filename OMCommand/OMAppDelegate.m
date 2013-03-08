//
//  OMAppDelegate.m
//  OMCommand
//
//  Created by Chen Lei on 13-3-8.
//  Copyright (c) 2013年 cmc. All rights reserved.
//

#import "OMAppDelegate.h"
#import "OMCommandControl.h"

@implementation OMAppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    UIViewController *viewController = [[UIViewController alloc] init];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"cool" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(0, 100, 100, 100)];
    [viewController.view addSubview:button];
    
    [button addTarget:self action:@selector(Push) forControlEvents:UIControlEventTouchUpInside];
    
    _navigation = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    
    
    [self.window setRootViewController:_navigation];
    
    [self.window makeKeyAndVisible];
    
    NSLog(@"%@", [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"File" ofType:@"strings"]]);
    
    
    
    return YES;
}

- (void)Push{
//    UIViewController *aviewcontroller = [[UIViewController alloc] init];
    [[OMCommandControl shareControl] doCommandType:OMCommandControlTools
                                         Commandid:OMToolCommandPlay
                                             Param:[OMCommandHelper getCommandParam_Tool_Play:@"mySong"]];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
