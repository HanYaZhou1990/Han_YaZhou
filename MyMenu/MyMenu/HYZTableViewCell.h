//
//  HYZTableViewCell.h
//  CellTest
//
//  Created by hanyazhou on 14-8-26.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#define Font 12

@interface HYZTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel         *contentLalble;
@property (nonatomic, strong) UIImageView     *headImageView;
@property (nonatomic, strong) UILabel         *nameLable;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withFram:(CGRect)fram;
@end
