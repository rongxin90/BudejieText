//
//  UIBarButtonItem+item.m
//  BudejieText
//
//  Created by 桂荣信 on 2018/7/27.
//  Copyright © 2018年 guirongxin. All rights reserved.
//

#import "UIBarButtonItem+item.h"

@implementation UIBarButtonItem (item)
+ (instancetype)itemWithImage:(UIImage *)image andHighImage:(UIImage *)highImage  title:(NSString *)name addTarget:(id)target action:(SEL)action{
    
    UIButton *tagBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [tagBtn setImage:image forState:UIControlStateNormal];
    [tagBtn setImage:highImage forState:UIControlStateHighlighted];
    [tagBtn setTitle:name forState:UIControlStateNormal];
    [tagBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [tagBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [tagBtn sizeToFit];
    [tagBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:tagBtn];
}

+ (instancetype)itemWithImage:(UIImage *)image andHighImage:(UIImage *)highImage addTarget:(id)target action:(SEL)action{
    
    UIButton *tagBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [tagBtn setImage:image forState:UIControlStateNormal];
    [tagBtn setImage:highImage forState:UIControlStateHighlighted];
    [tagBtn sizeToFit];
    [tagBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:tagBtn];
}

+ (instancetype)itemWithImage:(UIImage *)image andSelectImage:(UIImage *)selectImage addTarget:(id)target action:(SEL)action{
    
    UIButton *tagBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [tagBtn setImage:image forState:UIControlStateNormal];
    [tagBtn setImage:selectImage forState:UIControlStateSelected];
    [tagBtn sizeToFit];
    [tagBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:tagBtn];
}
@end
