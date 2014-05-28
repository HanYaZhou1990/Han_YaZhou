//
//  HYZTableViewCell.h
//  TBV
//
//  Created by hanyazhou on 14-5-28.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HYZCellButton.h"

@interface HYZTableViewCell : UITableViewCell<UITextFieldDelegate>
{
    BOOL     isHidden[3];
}
@property (nonatomic, strong) UITextField       *cellTextField;
@property (nonatomic, strong) UIButton          *cellAddButton;
@property (nonatomic, strong) HYZCellButton     *cellLableButton1;
@property (nonatomic, strong) HYZCellButton     *cellLableButton2;
@property (nonatomic, strong) HYZCellButton     *cellLableButton3;
@end
