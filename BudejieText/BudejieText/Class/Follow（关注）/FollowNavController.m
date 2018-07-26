//
//  FollowNavController.m
//  BudejieText
//
//  Created by 桂荣信 on 2018/7/23.
//  Copyright © 2018年 guirongxin. All rights reserved.
//

#import "FollowNavController.h"
@interface FollowNavController ()

@end

@implementation FollowNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpNavgationBar];
    
}

- (void)setUpNavgationBar{
    self.navigationItem.title = @"我的关注";
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] andHighImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] addTarget:self action:@selector(friendsRecommentClick)];
    
    
    
}

- (void)friendsRecommentClick{
    
//    NSLog(@"朋友关注");
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
