//
//  UIBarButtonItem+item.h
//  BudejieText
//
//  Created by 桂荣信 on 2018/7/27.
//  Copyright © 2018年 guirongxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (item)
+ (instancetype)itemWithImage:(UIImage *)image andHighImage:(UIImage *)highImage  title:(NSString *)name addTarget:(id)target action:(SEL)action;
+ (instancetype)itemWithImage:(UIImage *)image andHighImage:(UIImage *)highImage addTarget:(id)target action:(SEL)action;
+ (instancetype)itemWithImage:(UIImage *)image andSelectImage:(UIImage *)selectImage addTarget:(id)target action:(SEL)action;
@end
