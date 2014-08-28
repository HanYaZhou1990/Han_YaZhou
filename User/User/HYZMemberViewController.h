//
//  HYZMemberViewController.h
//  User
//
//  Created by hanyazhou on 14-8-28.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import "HYZViewController.h"
#import "HYZInformationView.h"
#import "HYZMainMenuView.h"

@interface HYZMemberViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView        *tableView;
@property (nonatomic, strong) NSMutableArray     *remberArray;//记录滑动点
@property (nonatomic, strong) UIRefreshControl   *refreshControl;
@end
