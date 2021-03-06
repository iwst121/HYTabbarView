//
//  HYTabbarCollectionCell.m
//  标签栏视图
//
//  Created by Sekorm on 16/9/6.
//  Copyright © 2016年 HY. All rights reserved.
//

#import "HYTabbarCollectionCell.h"

@interface HYTabbarCollectionCell()

@property (nonatomic,weak) UIView * subView;

@end

@implementation HYTabbarCollectionCell

- (void)setSubVc:(UIViewController *)subVc{
    
    _subVc = subVc;
    [self.contentView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [self.contentView addSubview:subVc.view];
    subVc.view.frame = self.bounds;
}

@end
