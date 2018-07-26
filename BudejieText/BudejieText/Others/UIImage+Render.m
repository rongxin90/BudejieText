//
//  UIImage+Render.m
//  BudejieText
//
//  Created by 桂荣信 on 2018/7/25.
//  Copyright © 2018年 guirongxin. All rights reserved.
//

#import "UIImage+Render.h"

@implementation UIImage (Render)

//tabbar的图片渲染处理
+(UIImage *)setUpImageRenderWithImageName:(NSString *)imageName{
        UIImage *image = [UIImage imageNamed:imageName];
    //设置使用原始状态下图片，不做渲染处理，然后返回一张不渲染的图片
        image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        return image;
}
@end
