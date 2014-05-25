//
//  HYZTableViewCell.m
//  CheckBox
//
//  Created by hanyazhou on 14-5-23.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZTableViewCell.h"

@implementation HYZTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self creatSubViews];
    }
    return self;
}

- (void)creatSubViews{
    
    _myTitleLable = [[UILabel alloc] initWithFrame:CGRectMake(MY_X, 0, 100, 30)];
    [self.contentView addSubview:_myTitleLable];
    
    
    _myPriceLable = [[UILabel alloc] initWithFrame:CGRectMake(MY_X, 30, 100, 30)];
    [self.contentView addSubview:_myPriceLable];
    
    
    _subtractButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _subtractButton.frame = CGRectMake(MY_X, 60, 40, 40);
    [_subtractButton setTitle:@" - " forState:UIControlStateNormal];
    [_subtractButton setBackgroundColor:[UIColor grayColor]];
    [_subtractButton addTarget:self action:@selector(subtractButtonClicked) forControlEvents:UIControlEventTouchUpInside];

    [self.contentView addSubview:_subtractButton];
    
    
    _numberTextField = [[UITextField alloc]initWithFrame:CGRectMake(MY_X + 40 + 10, 60, 60, 40)];
    _numberTextField.borderStyle = UITextBorderStyleLine;
    _numberTextField.textAlignment = NSTextAlignmentCenter;
    _numberTextField.delegate = self;
    _numberTextField.placeholder = @"0";
    _numberTextField.userInteractionEnabled = NO;
    _numberTextField.adjustsFontSizeToFitWidth = YES;
    [self.contentView addSubview:_numberTextField];
    
    _addButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _addButton.frame = CGRectMake(MY_X + 40 + 10*2 + 60, 60, 40, 40);
    [_addButton setTitle:@" + " forState:UIControlStateNormal];
    [_addButton setBackgroundColor:[UIColor grayColor]];
    [_addButton addTarget:self action:@selector(addButtonClicked) forControlEvents:UIControlEventTouchUpInside];

    [self.contentView addSubview:_addButton];
    
    _choiceButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _choiceButton.frame = CGRectMake(MY_X + 100+ 10, 10, 25, 25);
    [_choiceButton setBackgroundImage:[UIImage imageNamed:@"b.png"] forState:UIControlStateNormal];
    [_choiceButton addTarget:self action:@selector(choiceButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [_choiceButton setBackgroundColor:[UIColor grayColor]];
    [self.contentView addSubview:_choiceButton];
    
}

- (void)choiceButtonClicked{
    [_choiceButton setBackgroundImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
}

- (void)subtractButtonClicked{
    if ([_numberTextField.text intValue] > 0) {
        _numberTextField.text = [NSString stringWithFormat:@"%d",[_numberTextField.text intValue] - 1];
    }else{
        return;
    }
}

- (void)addButtonClicked{
    _numberTextField.text = [NSString stringWithFormat:@"%d",[_numberTextField.text intValue] + 1];
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
