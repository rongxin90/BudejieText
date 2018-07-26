//
//  main.m
//  BudejieText
//
//  Created by 桂荣信 on 2018/7/23.
//  Copyright © 2018年 guirongxin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
/*程序启动之后从Main函数开始执行
 *UIApplication应用程序启动流程
 *第一步：创建UIApplication（应用程序唯一标识）
 *用处：1.设置状态栏 2.检测联网状态 3.设置信息提醒数字 4.带淡化、发邮件、打短信、打开网页
 *第二步：创建UIApplication代理，监听应用程序生命周期，内存警告
 *第三步：开启主运行循环（runloop），保证程序一直运行，监听事件
 *第四步：判断info.plist文件是否指定Main，就回去加载
 
 *加载Main.sotryboard步骤
 *1.创建窗口
 *2.创建窗口根控制器，并且设置窗口跟控制器
 *3.显示窗口
 

 */

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
