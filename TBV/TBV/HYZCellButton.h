//
//  HYZCellButton.h
//  TBV
//
//  Created by hanyazhou on 14-5-28.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYZCellButton : UIButton
@property (nonatomic, strong) UIButton *deleteButton;
- (id)initWithFrame:(CGRect)frame buttonTag:(NSInteger)buttonTag;
@end
