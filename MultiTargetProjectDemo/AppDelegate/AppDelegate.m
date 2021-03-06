//
//  AppDelegate.m
//  MultiTargetProjectDemo
//
//  Created by xiaohui on 2018/4/17.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "AppDelegate.h"
#import "ManHomePageViewController.h"
#import "TreeHomePageViewController.h"
#import "BirdHomePageViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    //根据预处理器中定义的宏来区分不同的Target
    switch (TargetType) {
        case 1:
        {
            NSLog(@"Man 启动了");
            ManHomePageViewController *vc = [[ManHomePageViewController alloc] init];
            self.window.rootViewController = vc;
            break;
        }
        case 2:
        {
            NSLog(@"Tree 启动了");
            TreeHomePageViewController *vc = [[TreeHomePageViewController alloc] init];
            self.window.rootViewController = vc;
            break;
        }
        case 3:
        {
            NSLog(@"Bird 启动了");
            BirdHomePageViewController *vc = [[BirdHomePageViewController alloc] init];
            self.window.rootViewController = vc;
            break;
        }
        default:
            break;
    }
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
