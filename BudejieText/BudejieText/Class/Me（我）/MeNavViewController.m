//
//  MeNavViewController.m
//  BudejieText
//
//  Created by 桂荣信 on 2018/7/23.
//  Copyright © 2018年 guirongxin. All rights reserved.
//

#import "MeNavViewController.h"
@interface MeNavViewController ()

@end

@implementation MeNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    [self setUpNavgationBar];
}

- (void)setUpNavgationBar{
    self.navigationItem.title = @"我的";
    
    UIBarButtonItem *setting = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-setting-icon"] andHighImage:[UIImage imageNamed:@"mine-setting-icon-click"] addTarget:self action:@selector(settingClick)];
    
    UIBarButtonItem *moonLightMode = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-moon-icon"] andSelectImage:[UIImage imageNamed:@"mine-sun-icon-click"] addTarget:self action:@selector(moonLightModeClick:)];

    
    self.navigationItem.rightBarButtonItems = @[setting,moonLightMode];
    
}
- (void)moonLightModeClick:(UIButton *)btn{
    
    btn.selected = !btn.selected;
//    NSLog(@"moonLightModeClick");
}

- (void)settingClick{
    
    
//    NSLog(@"settingClick");
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
