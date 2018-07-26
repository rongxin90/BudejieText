//
//  MainTabBarController.m
//  BudejieText
//
//  Created by 桂荣信 on 2018/7/23.
//  Copyright © 2018年 guirongxin. All rights reserved.
//

#import "MainTabBarController.h"
#import "EssenseNavController.h"
#import "NewNavViewController.h"
#import "FollowNavController.h"
#import "MeNavViewController.h"
#import "PublishViewController.h"

#import "UIImage+Render.h"

@interface MainTabBarController ()

@property (nonatomic, weak)UIButton *plusButton;

@end

@implementation MainTabBarController

- (UIButton *)plusButton{
    
    if (_plusButton == nil) {
        UIButton *plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _plusButton = plusButton;
        [_plusButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [_plusButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [_plusButton sizeToFit];
        _plusButton.imageEdgeInsets = UIEdgeInsetsMake(1, 0, -1, 0);
        [self.tabBar addSubview:self.plusButton];

    }
    return _plusButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //由于tabbar中部按钮不需要使用，这里重新创建一个按钮添加到tabbar中间的位置上用力啊响应事件
//    self.plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.plusButton.center = CGPointMake(self.tabBar.bounds.size.width * 0.5, self.tabBar.bounds.size.height * 0.5);
//    [self.tabBar addSubview:self.plusButton];
    
    
    
//    self.view.backgroundColor = [UIColor redColor];
    //调用方法添加子控制器
    [self addChildNavChildViewController];
    
    //设置TabbarItem内容
    [self setUpTabbarButton];
    /*
     *设置tabbar按钮的颜色方法
     *1.设置tabbar的tintColor属性设置颜色
     *2.通过设置item模型来改变字体颜色和大小
     *知识点:只有在正常状态下才可以对字体进行设置
     */
//    [self.tabBar setTintColor:[UIColor blackColor]];
    
}

//程序已启动就会把类加载到内存
//只调用一次
+ (void)load{
    
    //setTitleTextAttributes 方法 是 “UI_APPEARANCE_SELECTOR ”，以后只要看到 方法名后面有 “UI_APPEARANCE_SELECTOR ”，就代表可以使用 "[UITabBarItem appearance];" 中的 “appearance”。统一设置。
    //还可以设置UITabBarItem的分类来设置字体
    UITabBarItem *item = [UITabBarItem appearance];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
}

#pragma mark --设置TabbarItem内容
- (void)setUpTabbarButton{
    //获取子控制器
    UINavigationController *nav0 = self.childViewControllers[0];
    nav0.tabBarItem.title = @"精华";
    nav0.tabBarItem.image = [UIImage setUpImageRenderWithImageName:@"tabBar_essence_icon"];
    nav0.tabBarItem.selectedImage = [UIImage setUpImageRenderWithImageName:@"tabBar_essence_click_icon"];
    
    UINavigationController *nav1 = self.childViewControllers[1];
    nav1.tabBarItem.title = @"新帖";
    nav1.tabBarItem.image = [UIImage setUpImageRenderWithImageName:@"tabBar_new_icon"];
    nav1.tabBarItem.selectedImage = [UIImage setUpImageRenderWithImageName:@"tabBar_new_click_icon"];
    
    UIViewController *nav2 = self.childViewControllers[2];
    nav2.tabBarItem.enabled = NO;
//    nav0.tabBarItem.title = @"精华";
//    nav2.tabBarItem.image = [UIImage setUpImageRenderWithImageName:@"tabBar_publish_icon"];
//    nav2.tabBarItem.selectedImage = [UIImage setUpImageRenderWithImageName:@"tabBar_publish_click_icon"];
    
    UINavigationController *nav3 = self.childViewControllers[3];
    nav3.tabBarItem.title = @"关注";
    nav3.tabBarItem.image = [UIImage setUpImageRenderWithImageName:@"tabBar_friendTrends_icon"];
    nav3.tabBarItem.selectedImage = [UIImage setUpImageRenderWithImageName:@"tabBar_friendTrends_click_icon"];
    
    UINavigationController *nav4 = self.childViewControllers[4];
    nav4.tabBarItem.title = @"我";
    nav4.tabBarItem.image = [UIImage setUpImageRenderWithImageName:@"tabBar_me_icon"];
    nav4.tabBarItem.selectedImage = [UIImage setUpImageRenderWithImageName:@"tabBar_me_click_icon"];
}

#pragma mark --添加子控制器
- (void)addChildNavChildViewController{
    //添加子控制器
    EssenseNavController *vc1 = [[EssenseNavController alloc] init];
        vc1.view.backgroundColor = [UIColor blueColor];
//        UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:vc1];
//        [self addChildViewController:nav1];
    [self addNavgationRootVC:vc1];
    
    NewNavViewController *vc2 = [[NewNavViewController alloc] init];
    vc2.view.backgroundColor = [UIColor purpleColor];
//    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:vc2];
//    [self addChildViewController:nav2];
    [self addNavgationRootVC:vc2];
    
    PublishViewController *vc3 = [[PublishViewController alloc] init];
    vc3.view.backgroundColor = [UIColor greenColor];
//    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:vc3];
//    [self addChildViewController:vc3];
    [self addNavgationRootVC:vc3];
    
    FollowNavController *vc4 = [[FollowNavController alloc] init];
    vc4.view.backgroundColor = [UIColor redColor];
//    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:vc4];
//    [self addChildViewController:nav4];
    [self addNavgationRootVC:vc4];
    
    MeNavViewController *vc5 = [[MeNavViewController alloc] init];
    vc5.view.backgroundColor = [UIColor orangeColor];
//    UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:vc5];
//    [self addChildViewController:nav5];
    [self addNavgationRootVC:vc5];
    
}

//提取方法，设置navgationVC的根控制器
- (void)addNavgationRootVC:(UIViewController *)controller{
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:controller];
    [self addChildViewController:nav];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
