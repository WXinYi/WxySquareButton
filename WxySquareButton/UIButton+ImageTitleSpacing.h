//
//  UIButton+ImageTitleSpacing.h
//  WxySquareButton
//
//  Created by WangXy on 2016/12/21.
//  Copyright © 2016年 王馨仪. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, WxyButtonEdgeInsetsStyle) {

    WxyButtonEdgeInsetsStyleImageTop,
    WxyButtonEdgeInsetsStyleImageLeft,
    WxyButtonEdgeInsetsStyleImageBottom,
    WxyButtonEdgeInsetsStyleImageRight,
};

@interface UIButton (ImageTitleSpacing)

-(void)layoutButtonWithEdgInsetsStyle:(WxyButtonEdgeInsetsStyle)style
                    imageTitleSpacing:(CGFloat)space;

@end
