//
//  GTAppDelegate.m
//  Contact
//
//  Created by Tim McHale on 5/23/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import "GTAppDelegate.h"
#import "GTContactViewController.h"

@implementation GTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    GTContactViewController *contact = [[GTContactViewController alloc] init];
    
    
    UINavigationController *navController = [[UINavigationController alloc]
                                             initWithRootViewController:contact];
    
    
    // Place navigation controller's view in the window hierarchy
    self.window.rootViewController = navController;

    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}





@end
