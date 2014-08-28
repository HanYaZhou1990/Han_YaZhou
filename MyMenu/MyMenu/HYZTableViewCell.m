//
//  HYZTableViewCell.m
//  CellTest
//
//  Created by hanyazhou on 14-8-26.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import "HYZTableViewCell.h"

@implementation HYZTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withFram:(CGRect)fram;
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        _headImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 5, 40, 40)];
        _headImageView.image = [UIImage imageNamed:@"galaxy"];
        [self.contentView addSubview:_headImageView];
        
        _nameLable = [[UILabel alloc] initWithFrame:CGRectMake(60, 5, 120, 20)];
        _nameLable.font = [UIFont systemFontOfSize:Font];
        _nameLable.textAlignment = NSTextAlignmentLeft;
        _nameLable.text = @"Name";
        [self.contentView addSubview:_nameLable];
        
        
        _contentLalble = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, fram.size.width - 20, fram.size.height)];
        _contentLalble.numberOfLines = 0;
        _contentLalble.font = [UIFont systemFontOfSize:Font];
        _contentLalble.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:_contentLalble];
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 50+fram.size.height - 1, 300, 1)];
        imageView.image = [UIImage imageNamed:@"galaxy"];
        [self.contentView addSubview:imageView];
    }
    return self;
}

- (void)awakeFromNib{}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{[super setSelected:selected animated:animated];}

@end
