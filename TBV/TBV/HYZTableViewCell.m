//
//  HYZTableViewCell.m
//  TBV
//
//  Created by hanyazhou on 14-5-28.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZTableViewCell.h"

@implementation HYZTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self loadSubViews];
    }
    return self;
}

- (void)loadSubViews{
    
    _cellTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 0, 100, 30)];
    _cellTextField.borderStyle = UITextBorderStyleLine;
    _cellTextField.delegate = self;
    _cellTextField.font = [UIFont systemFontOfSize:20];
    [self.contentView addSubview:_cellTextField];
    
    _cellAddButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _cellAddButton.frame = CGRectMake(140, 0, 100, 30);
    [_cellAddButton setTitle:@"贴上" forState:UIControlStateNormal];
    [_cellAddButton setBackgroundColor:[UIColor blueColor]];
    [_cellAddButton addTarget:self action:@selector(addButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:_cellAddButton];
    
    
    _cellLableButton1 = [[HYZCellButton alloc] initWithFrame:CGRectMake(10, 40, 80 , 30) buttonTag:1000];
    [_cellLableButton1 setBackgroundColor:[UIColor redColor]];
    [_cellLableButton1 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    _cellLableButton1.hidden = YES;
    [_cellLableButton1.deleteButton addTarget:self action:@selector(deleteButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:_cellLableButton1];
    
    
    _cellLableButton2 = [[HYZCellButton alloc] initWithFrame:CGRectMake(110, 40, 80 , 30) buttonTag:1001];
    [_cellLableButton2 setBackgroundColor:[UIColor redColor]];
    _cellLableButton2.hidden = YES;
    [_cellLableButton2 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [_cellLableButton2.deleteButton addTarget:self action:@selector(deleteButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:_cellLableButton2];
    
    
    
    _cellLableButton3 = [[HYZCellButton alloc] initWithFrame:CGRectMake(210, 40, 100 , 30) buttonTag:1002];
    [_cellLableButton3 setBackgroundColor:[UIColor redColor]];
    _cellLableButton3.hidden = YES;
    _cellLableButton1.tag = 1002;
    [_cellLableButton3 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [_cellLableButton3.deleteButton addTarget:self action:@selector(deleteButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.contentView addSubview:_cellLableButton3];
    
    
    
}

- (void)addButtonClicked:(UIButton *)sender{
    if (isHidden[0] == 0 && isHidden[1] == 0 && isHidden[2] == 0) {
        isHidden[0] =! isHidden[0];
        _cellLableButton1.hidden = NO;
        [_cellLableButton1 setTitle:_cellTextField.text forState:UIControlStateNormal];
    }else if (isHidden[0] == 1 && isHidden[1] == 0 && isHidden[2] == 0){
        isHidden[1] =! isHidden[1];
        _cellLableButton2.hidden = NO;
        [_cellLableButton2 setTitle:_cellTextField.text forState:UIControlStateNormal];
    }else if (isHidden[0] == 1 && isHidden[1] == 1 && isHidden[2] == 0){
        isHidden[2] =! isHidden[2];
        _cellLableButton3.hidden = NO;
        [_cellLableButton3 setTitle:_cellTextField.text forState:UIControlStateNormal];
    }
}

- (void)buttonClicked:(UIButton *)sender{
    
}

- (void)deleteButtonClicked:(HYZCellButton *)sender{
    NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
    NSArray *boolArray = @[[NSString stringWithFormat:@"%d",isHidden[0]],[NSString stringWithFormat:@"%d",isHidden[1]],[NSString stringWithFormat:@"%d",isHidden[2]]];
    switch (sender.tag) {
        case 1000:
        {
        for (NSString *boolString in boolArray) {
            if ([boolString isEqualToString:@"1"]) {
                [mutableArray addObject:@"1"];
            }else{
                break;
            }
        }
        if ([mutableArray count] == 1) {
            isHidden[0] = !isHidden[0];
            _cellLableButton1.hidden = YES;
        }else if ([mutableArray count] == 2){
            isHidden[1] = !isHidden[1];
            _cellLableButton2.hidden = YES;
            [_cellLableButton1 setTitle:_cellLableButton2.titleLabel.text forState:UIControlStateNormal];
        }
        else{
            isHidden[2] = !isHidden[2];
            _cellLableButton3.hidden = YES;
            [_cellLableButton1 setTitle:_cellLableButton2.titleLabel.text forState:UIControlStateNormal];
            [_cellLableButton2 setTitle:_cellLableButton3.titleLabel.text forState:UIControlStateNormal];
        }

        }
            break;
        case 1001:
        {
        isHidden[1] = !isHidden[1];
        _cellLableButton2.hidden = YES;
        }
            break;
        case 1002:
        {
        isHidden[2] = !isHidden[2];
        _cellLableButton3.hidden = YES;
        }
            break;
            
        default:
            break;
    }
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
