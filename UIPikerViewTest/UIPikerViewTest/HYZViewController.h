//
//  HYZViewController.h
//  UIPikerViewTest
//
//  Created by hanyazhou on 14-8-4.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYZViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
@property (nonatomic, strong) UIPickerView *pickerView;
@property (nonatomic, strong) NSArray      *categoryArray;
@property (nonatomic, strong) NSArray      *contentArray;
@end
