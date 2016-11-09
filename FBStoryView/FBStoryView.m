//
//  FBStoryView.m
//  FBStoryView
//
//  Created by tangyuhua on 2016/11/9.
//  Copyright © 2016年 tangyuhua. All rights reserved.
//

// http://stackoverflow.com/questions/4016316/iphone-the-input-parameter-to-uiviews-sizethatfits-method

#import "FBStoryView.h"
#import "FBHeaderView.h"
#import "FBMessageView.h"
#import "FBAttachmentView.h"
#import "FBLikeBarView.h"

@implementation FBStoryView

{
    FBHeaderView *_headerView;
    FBMessageView *_messageView;
    FBAttachmentView *_attachmentView;
    FBLikeBarView *_likeBarView;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        _headerView = [[FBHeaderView alloc] init];
        _messageView = [[FBMessageView alloc] init];
        _attachmentView = [[FBAttachmentView alloc] init];
        _likeBarView = [[FBLikeBarView alloc] init];
        
        [self setSubViewColor];
        self.backgroundColor = [UIColor grayColor];
        
//        [self addSubview:_headerView];
//        [self addSubview:_messageView];
//        [self addSubview:_attachmentView];
//        [self addSubview:_likeBarView];
        
        
        //  34 行代码版本： https://gist.github.com/adamjernst/2d52beb72506863f0ac5
        
        [self setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_headerView][_messageView][_attachmentView][_likeBarView]|"
                                                                     options:NSLayoutFormatAlignAllLeft
                                                                     metrics:@{}
                                                                       views:NSDictionaryOfVariableBindings(_headerView, _messageView, _attachmentView, _likeBarView)]];
        for (UIView *view in @[_headerView, _messageView, _attachmentView, _likeBarView]) {
            [self addSubview:view];
            [view setTranslatesAutoresizingMaskIntoConstraints:NO];
            [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|"
                                                                         options:NSLayoutFormatAlignAllTop
                                                                         metrics:@{}
                                                                           views:@{@"view": view}]];
        }
    }
    return self;
}
//
//- (CGSize)sizeThatFits:(CGSize)size
//{
//    // sizeThatFits 的参数 在这里其实就是宽度有显示，高度没有限制。
//    // 不如uilabel 根据内容来调整尺寸，尺寸有很多调整方法，左右拉长和上下拉长。那么到底采用那一中方式来实现呢。
//    
//    return CGSizeMake(size.width,
//                      [_headerView sizeThatFits:CGSizeMake(size.width, CGFLOAT_MAX)].height
//                      + [_messageView sizeThatFits:CGSizeMake(size.width, CGFLOAT_MAX)].height
//                      + [_attachmentView sizeThatFits:CGSizeMake(size.width, CGFLOAT_MAX)].height
//                      + [_likeBarView sizeThatFits:CGSizeMake(size.width, CGFLOAT_MAX)].height);
//}
//
//- (void)layoutSubviews
//{
//    CGFloat width = [self bounds].size.width;
//    CGFloat y = 0;
//    CGFloat headerHeight = [_headerView sizeThatFits:CGSizeMake(width, CGFLOAT_MAX)].height;
//    [_headerView setFrame:CGRectMake(0, y, width, headerHeight)];
//    y += headerHeight;
//    CGFloat messageHeight = [_messageView sizeThatFits:CGSizeMake(width, CGFLOAT_MAX)].height;
//    [_messageView setFrame:CGRectMake(0, y, width, messageHeight)];
//    y += messageHeight;
//    CGFloat attachmentHeight = [_attachmentView sizeThatFits:CGSizeMake(width, CGFLOAT_MAX)].height;
//    [_attachmentView setFrame:CGRectMake(0, y, width, attachmentHeight)];
//    y += attachmentHeight;
//    CGFloat likeBarHeight = [_likeBarView sizeThatFits:CGSizeMake(width, CGFLOAT_MAX)].height;
//    [_likeBarView setFrame:CGRectMake(0, y, width, likeBarHeight)];
//    y += likeBarHeight;
//}
//


- (void)setSubViewColor{
    _headerView.backgroundColor = [UIColor redColor];
    _messageView.backgroundColor = [UIColor greenColor];
    _attachmentView.backgroundColor = [UIColor yellowColor];
    _likeBarView.backgroundColor = [UIColor blueColor];
}


@end
