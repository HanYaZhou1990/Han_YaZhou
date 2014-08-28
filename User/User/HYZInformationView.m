//
//  HYZInformationView.m
//  User
//
//  Created by hanyazhou on 14-8-28.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import "HYZInformationView.h"

@implementation HYZInformationView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self drawUI];
    }
    return self;
}

- (void)drawUI{
    
    _headerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 64, 64)];
    _headerImageView.image = [UIImage imageNamed:@"rumi80"];
    _headerImageView.layer.cornerRadius = 32;
    _headerImageView.clipsToBounds =YES;
    [self addSubview:_headerImageView];
    
    _titleLable = [[UILabel alloc] initWithFrame:CGRectMake(100, 16, 200, 22)];
    _titleLable.font = [UIFont systemFontOfSize:18];
    _titleLable.textColor = [UIColor whiteColor];
    _titleLable.text = @"加大路上看风景啊了";
    [self addSubview:_titleLable];
    
    _sexLable = [[UILabel alloc] initWithFrame:CGRectMake(100, 45, 20, 16)];
    _sexLable.font = [UIFont systemFontOfSize:14];
    _sexLable.text = @"男";
    _sexLable.textColor = [UIColor whiteColor];
    [self addSubview:_sexLable];
    
    _ageLable = [[UILabel alloc] initWithFrame:CGRectMake(130, 45, 50, 16)];
    _ageLable.font = [UIFont systemFontOfSize:14];
    _ageLable.text = @"100岁";
    _ageLable.textColor = [UIColor whiteColor];
    _ageLable.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_ageLable];
    
    _addressLable = [[UILabel alloc] initWithFrame:CGRectMake(190, 45, 110, 16)];
    _addressLable.font = [UIFont systemFontOfSize:14];
    _addressLable.text = @"河南省郑州市";
    _addressLable.textColor = [UIColor whiteColor];
    _addressLable.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_addressLable];
    
    _signatureLable = [[UILabel alloc] initWithFrame:CGRectMake(100, 70, 200, 44)];
    _signatureLable.text = @"加大路上看风景啊了加加大路上看风景啊了加加大路上看风景啊了加加大";
    _signatureLable.numberOfLines = 0;
    _signatureLable.adjustsFontSizeToFitWidth = YES;
    _signatureLable.font = [UIFont systemFontOfSize:12];
    _signatureLable.textColor = [UIColor whiteColor];
    [self addSubview:_signatureLable];
    
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();//获得处理上下文
    CGContextSetRGBStrokeColor(context, 255.0/255.0f, 255.0/255.0f, 255.0/255.0f, 1.0f);//设置线条颜色
    CGContextAddEllipseInRect(context, CGRectMake(20, 20, 64, 64));
    CGContextSetLineWidth(context, 8);//线的宽度
    CGContextStrokePath(context);
    [super drawRect:rect];
}

@end
