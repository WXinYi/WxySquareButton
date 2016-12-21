//
//  UIButton+ImageTitleSpacing.m
//  WxySquareButton
//
//  Created by WangXy on 2016/12/21.
//  Copyright © 2016年 王馨仪. All rights reserved.
//

#import "UIButton+ImageTitleSpacing.h"

@implementation UIButton (ImageTitleSpacing)

-(void)layoutButtonWithEdgInsetsStyle:(WxyButtonEdgeInsetsStyle)style
                    imageTitleSpacing:(CGFloat)space{

/**
 *  知识点：titleEdgeInsets是title相对于其上下左右的inset，跟tableView的contentInset是类似的，
 *  如果只有title，那它上下左右都是相对于button的，image也是一样；
 *  如果同时有image和label，那这时候image的上左下是相对于button，右边是相对于label的；title的上右下是相对于button，左边是相对于image的。
 */
// 1. 获取button上image，title的宽高：
    //获取image宽高
    CGFloat imageWidth = self.imageView.frame.size.width;
    CGFloat imageHeight = self.imageView.frame.size.height;
    //获取label宽高
    
    CGFloat labelWidth = 0;
    CGFloat labelHeight = 0;
    if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
        //iOS8 前后获取titlelabel宽高方式不同
        labelWidth = self.titleLabel.intrinsicContentSize.width;
        labelHeight = self.titleLabel.intrinsicContentSize.height;
    }else{
    
        labelWidth = self.titleLabel.frame.size.width;
        labelHeight = self.titleLabel.frame.size.height;
    }
    
// 2. 声明全局的imageEdgeInsets和labelEdgeInsets：
    UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;

    
// 3. 根据传入的 style 及 space 确定 imageEdgeInsets和labelEdgeInsets的值
    switch (style) {
        case WxyButtonEdgeInsetsStyleImageTop:
        {
            imageEdgeInsets = UIEdgeInsetsMake(-labelHeight-space/2.0, 0, 0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWidth, -imageHeight-space/2.0, 0);
        }
            break;
        case WxyButtonEdgeInsetsStyleImageLeft:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, -space/2.0, 0, space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, -space/2.0);
        }
            break;
        case WxyButtonEdgeInsetsStyleImageBottom:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight-space/2.0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-space/2.0, -imageWidth, 0, 0);
        }
            break;
        case WxyButtonEdgeInsetsStyleImageRight:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space/2.0, 0, -labelWidth-space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWidth-space/2.0, 0, imageWidth+space/2.0);
        }
            break;
        default:
            break;
    }
    // 4. 赋值
    self.titleEdgeInsets = labelEdgeInsets;
    self.imageEdgeInsets = imageEdgeInsets;


}


@end
