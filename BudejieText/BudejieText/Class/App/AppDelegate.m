//
//  AppDelegate.m
//  BudejieText
//
//  Created by 桂荣信 on 2018/7/23.
//  Copyright © 2018年 guirongxin. All rights reserved.
//

#import "AppDelegate.h"
#import "MainTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//程序启动之后会调用
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /*加载Main.sotryboard步骤
    *1.创建窗口
    *2.创建窗口根控制器，并且设置窗口跟控制器
    *3.显示窗口
    */
    
    //创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //创建根控制器并设置
    //窗口在显示的时候，会把窗口根控制器的View添加到窗口上
    MainTabBarController *RootController = [[MainTabBarController alloc] init];
    self.window.rootViewController = RootController;
//    RootController.view.backgroundColor = [UIColor colorWithRed:1 / 255.0 green:234 / 255.0 blue:234 / 255.0 alpha:1];
    //tabBar高度49像素  navationBar高度44像素
    //添加导航控制器为tabbar的子控制器
    //导航控制器会把自己的根控制器的View添加到自己的view上面去（initWithRootViewController方法中有pushViewController功能）
    //导航控制器Push，将跟控制器压入栈底
    //把栈顶控制器的view添加到自己的view上面，并显示出来
    
    
    
    //显示窗口
    [self.window makeKeyAndVisible];
    
    return YES;
}


//收到内存警告之后，在这个方法里面做清除缓存操作
-(void)applicationDidReceiveMemoryWarning:(UIApplication *)application{
    /*
     1.清空图片缓存(SDWebImage)
     
     
     */
    
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
