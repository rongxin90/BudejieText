//
//  EssenseNavController.m
//  BudejieText
//
//  Created by 桂荣信 on 2018/7/23.
//  Copyright © 2018年 guirongxin. All rights reserved.
//

#import "EssenseNavController.h"
#import "GRTagMainTableController.h"
@interface EssenseNavController ()

@end

@implementation EssenseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置navgationBar内容
    [self setUpNavgationBar];
    
}

//设置navgationBar内容
- (void)setUpNavgationBar{
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
//    UIButton *tagBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [tagBtn setImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateNormal];
//    [tagBtn setImage:[UIImage imageNamed:@"MainTagSubIconClick"] forState:UIControlStateHighlighted];
//    [tagBtn sizeToFit];
//
//    [tagBtn addTarget:self action:@selector(tagBtnClick) forControlEvents:UIControlEventTouchUpInside];
//    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:tagBtn];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] andHighImage:[UIImage imageNamed:@"MainTagSubIconClick"] addTarget:self action:@selector(tagBtnClick)];
    
}

- (void)tagBtnClick{
    
//    NSLog(@"推荐标签");
    GRTagMainTableController *tableController = [[GRTagMainTableController alloc] init];
    self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:tableController animated:YES];
    self.hidesBottomBarWhenPushed = NO;
    
    
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
