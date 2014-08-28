//
//  HYZInformationView.h
//  User
//
//  Created by hanyazhou on 14-8-28.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYZInformationView : UIView
@property (nonatomic ,strong) UIImageView      *headerImageView;//头像
@property (nonatomic ,strong) UILabel          *titleLable;//用户名
@property (nonatomic ,strong) UILabel          *sexLable;//性别
@property (nonatomic ,strong) UILabel          *ageLable;//年龄
@property (nonatomic ,strong) UILabel          *addressLable;//地址
@property (nonatomic ,strong) UILabel          *signatureLable;//签名
@end
