//
//  HYZTableViewCell.h
//  CheckBox
//
//  Created by hanyazhou on 14-5-23.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <UIKit/UIKit.h>
#define MY_X       [[UIScreen mainScreen] bounds].size.width/2 - 10

@interface HYZTableViewCell : UITableViewCell<UITextFieldDelegate>

@property (nonatomic, strong) UILabel      *myTitleLable;
@property (nonatomic, strong) UILabel      *myPriceLable;
@property (nonatomic, strong) UITextField  *numberTextField;
@property (nonatomic, strong) UIButton     *subtractButton;
@property (nonatomic, strong) UIButton     *addButton;
@property (nonatomic, strong) UIButton     *choiceButton;

@end
