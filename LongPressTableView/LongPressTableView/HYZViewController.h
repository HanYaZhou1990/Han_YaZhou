//
//  HYZViewController.h
//  LongPressTableView
//
//  Created by hanyazhou on 14-5-26.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYZViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView          *tableView;
@end
