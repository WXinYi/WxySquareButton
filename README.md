# WxySquareButton
关于UIButton上titlelabel及imageview位置的分类

## 简介
iOS中按钮的样式有很多种，系统默认为图片在左边，文字在右边，显然系统的所给予的样式无法满足我们的开发需求，所以就抽出一点时间顺便写了这个分类，分类中UIButton上titlelabel与imageview体位关系有以下四种：

*   WxyButtonEdgeInsetsStyleImageTop, //图片在上，文字在下
*   WxyButtonEdgeInsetsStyleImageLeft, // 图片在左，文字在右
*   WxyButtonEdgeInsetsStyleImageBottom, // 图片在下，文字在上
*   WxyButtonEdgeInsetsStyleImageRight, // 图片在右，文字在左

## 使用方法
 
 
1. 将“UIButton+ImageTitleSpacing” 的.h/.m文件拖入工程。
2. 在需要的地方引入头文件：“UIButton+ImageTitleSpacing.h”
3. 使用以下代码对按钮进行设置：
`[你的button layoutButtonWithEdgInsetsStyle:需要的样式 imageTitleSpacing:文字与图片的间隔]` 






