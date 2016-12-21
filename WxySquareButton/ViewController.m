//
//  ViewController.m
//  WxySquareButton
//
//  Created by WangXy on 2016/12/21.
//  Copyright © 2016年 王馨仪. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+ImageTitleSpacing.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *titles = @[@"image在上，title在下", @"image在左，title在右", @"image在右，title在左",@"image在下，title在上"];
    for (int i = 0; i < 4; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(70,44+100*i, 180, 80);
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor lightGrayColor]];
        button.titleLabel.font = [UIFont systemFontOfSize:12];
        [button setImage:[UIImage imageNamed:@"image"] forState:UIControlStateNormal];
        [button setTitle:titles[i] forState:UIControlStateNormal];
        
        switch (i) {
            case 0: // image在上，title在下
                [button layoutButtonWithEdgInsetsStyle:WxyButtonEdgeInsetsStyleImageTop imageTitleSpacing:10];
                break;
            case 1: // image在左，title在右
                [button layoutButtonWithEdgInsetsStyle:WxyButtonEdgeInsetsStyleImageLeft imageTitleSpacing:5];
                break;
            case 2: // image在右，title在
                [button layoutButtonWithEdgInsetsStyle:WxyButtonEdgeInsetsStyleImageRight imageTitleSpacing:5];
                break;
            case 3: // image在下，title在上
                [button layoutButtonWithEdgInsetsStyle:WxyButtonEdgeInsetsStyleImageBottom imageTitleSpacing:10];
                break;
                
            default:
                break;
        }
        [self.view addSubview:button];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
