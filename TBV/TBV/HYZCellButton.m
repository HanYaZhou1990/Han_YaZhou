//
//  HYZCellButton.m
//  TBV
//
//  Created by hanyazhou on 14-5-28.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZCellButton.h"

@implementation HYZCellButton

- (id)initWithFrame:(CGRect)frame buttonTag:(NSInteger)buttonTag
{
    self = [super initWithFrame:frame];
    if (self) {
        _deleteButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_deleteButton setTitle:@"X" forState:UIControlStateNormal];
        [_deleteButton setBackgroundColor:[UIColor grayColor]];
        _deleteButton.frame = CGRectMake(frame.size.width - 14, 0, 14, 14);
        _deleteButton.tag = buttonTag;
        [self addSubview:_deleteButton];
    }
    return self;
}

@end
