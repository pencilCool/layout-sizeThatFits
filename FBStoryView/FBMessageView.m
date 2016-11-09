//
//  FBMessageView.m
//  FBStoryView
//
//  Created by tangyuhua on 2016/11/9.
//  Copyright © 2016年 tangyuhua. All rights reserved.
//

#import "FBMessageView.h"

@implementation FBMessageView

- (CGSize)sizeThatFits:(CGSize)size
{
    // sizeThatFits 的参数 在这里其实就是宽度有显示，高度没有限制。
    // 不如uilabel 根据内容来调整尺寸，尺寸有很多调整方法，左右拉长和上下拉长。那么到底采用那一中方式来实现呢。
    
    return CGSizeMake(100,100);
}


@end
