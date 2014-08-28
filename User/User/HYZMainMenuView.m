//
//  HYZMainMenuView.m
//  User
//
//  Created by hanyazhou on 14-8-28.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import "HYZMainMenuView.h"

@implementation HYZMainMenuView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self drawUI];
    }
    return self;
}

- (void)drawUI{
    _btnArray=[@[]mutableCopy];
    NSArray *imageArray = @[[UIImage imageNamed:@"sinaImageWhite"],[UIImage imageNamed:@"pictureImageWhite"],[UIImage imageNamed:@"mediaImageWhite"],[UIImage imageNamed:@"messageImageWhite"]];
    for (int i = 0; i < 4; i ++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(320/4*i, 0, 320/4, 44);
        [button setBackgroundImage:imageArray[i] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage initWithColor:[UIColor orangeColor]] forState:UIControlStateSelected];
        [button setMultipleTouchEnabled:YES];
        button.tag = 10+i;
        [button addTarget:self action:@selector(itemClick:) forControlEvents:UIControlEventTouchUpInside];
        [_btnArray addObject:button];
        [self addSubview:button];
    }}

-(void)itemClick:(UIButton *)sender{
    for (int i = 0; i < 4; i ++) {
        UIButton *btn = (UIButton *)_btnArray[i];
        if (sender.tag == btn.tag) {
            [btn setSelected:YES];
        }else{
            [btn setSelected:NO];
        }
    }
}

- (void)drawRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();//获得处理上下文
    CGContextSetRGBStrokeColor(context, 255.0/255.0f, 255.0/255.0f, 255.0/255.0f, 1.0f);//设置线条颜色
    CGContextMoveToPoint(context, 0, 0);//设置线的坐标点
    CGContextAddLineToPoint(context, self.bounds.size.width,1.0);//设置线的结束点
    CGContextSetLineCap(context, kCGLineCapRound);//设置线条样式
    CGContextSetLineWidth(context, 0.5);//线的宽度
    CGContextStrokePath(context);//链接上边的坐标点
    [super drawRect:rect];
}

@end
