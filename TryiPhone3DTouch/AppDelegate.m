//
//  AppDelegate.m
//  TryiPhone3DTouch
//
//  Created by AlanYen on 2015/10/29.
//  Copyright (c) 2015年 17Life. All rights reserved.
//

#import "AppDelegate.h"

@class UIApplicationShortcutItem;

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)handleShortCutItem:(UIApplicationShortcutItem *)shortcutItem {
    [[[UIAlertView alloc] initWithTitle:@""
                                message:@"handleShortCutItem"
                               delegate:nil
                      cancelButtonTitle:@"確認"
                      otherButtonTitles:nil] show];
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void(^)(BOOL succeeded))completionHandler{
    
    [self handleShortCutItem:shortcutItem];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //
    // http://blog.ringcentral.cn/2015/10/how-to-support-3d-touch-static-action-on-xcode6/
    //
    
    BOOL shouldPerformAdditionalDelegateHandling = YES;
    /* please replace the true value of UIApplicationLaunchOptionsShortcutItemKey from Xcode7 */
    if (launchOptions && [launchOptions objectForKey: @"UIApplicationLaunchOptionsShortcutItemKey"]) {
        shouldPerformAdditionalDelegateHandling = NO;
        [self handleShortCutItem: [launchOptions objectForKey: @"UIApplicationLaunchOptionsShortcutItemKey"]];
        return shouldPerformAdditionalDelegateHandling;
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
