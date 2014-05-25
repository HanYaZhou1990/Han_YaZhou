//
//  HYZViewController.h
//  CheckBox
//
//  Created by hanyazhou on 14-5-23.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HYZTableViewCell.h"

@interface HYZViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView          *tableView;
@property (nonatomic, strong) NSMutableArray       *messageArray;
@property (nonatomic, strong) NSMutableArray       *submmitArray;
@property (nonatomic, strong) NSMutableDictionary  *temporaryDictionary;
@end
