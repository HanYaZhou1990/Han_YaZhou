//
//  HYZMemberViewController.m
//  User
//
//  Created by hanyazhou on 14-8-28.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import "HYZMemberViewController.h"

@interface HYZMemberViewController ()

@end

@implementation HYZMemberViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) refreshView:(UIRefreshControl *)refresh{
    refresh.attributedTitle = [[NSAttributedString alloc] initWithString:@"更新数据中..."];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _remberArray = [@[]mutableCopy];
#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_7_0
#else
    self.automaticallyAdjustsScrollViewInsets = NO;
#endif
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 568-64) style:UITableViewStylePlain];
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.showsVerticalScrollIndicator = NO;
    [self.view addSubview:_tableView];
    
    
    _refreshControl = [[UIRefreshControl alloc] init];
    [_refreshControl addTarget:self
                        action:@selector(refreshView:)
              forControlEvents:UIControlEventValueChanged];
    [_refreshControl setAttributedTitle:[[NSAttributedString alloc] initWithString:@"松手更新数据"]];
    [_tableView addSubview:_refreshControl];
    
    
    UIBarButtonItem *messageItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"chatImageWhite"] style:UIBarButtonItemStylePlain target:self action:@selector(titleItemBtnClick:)];
    messageItem.tag = 10;
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"addImageWhite.png"] style:UIBarButtonItemStylePlain target:self action:@selector(titleItemBtnClick:)];
    addItem.tag = 11;
    self.navigationItem.rightBarButtonItems = @[addItem,messageItem];
    
    
}
- (void)titleItemBtnClick:(UIBarButtonItem *)sender{
    NSLog(@" %lu ",sender.tag);
    if (sender.tag == 11) {
        
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 132;
    }else{
        return 44;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        HYZInformationView *view = [[HYZInformationView alloc] init];
        view.backgroundColor = UIColorFromRGB(0x46567E);
        return  view;
    }else{
        HYZMainMenuView *view = [[HYZMainMenuView alloc] init];
        view.backgroundColor = UIColorFromRGB(0x46567E);
        return  view;
    }
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 0;
    }else{
        return 40;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 0.5;
    }else{
        return 44;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%lu",indexPath.row];
    return cell;
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [_remberArray addObject:[NSString stringWithFormat:@"%f",scrollView.contentOffset.y]];
}


- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    if ([_remberArray[0] floatValue] < scrollView.contentOffset.y ) {
        [_refreshControl endRefreshing];
         _tableView.sectionHeaderHeight = 0;
         [_tableView reloadData];
         [_remberArray removeAllObjects];
    }else{
         _tableView.sectionHeaderHeight = 88;
         [_tableView reloadData];
         [_remberArray removeAllObjects];
    }
}
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView{
    NSLog(@"scrollViewDidScrollToTop");
}
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView{
    return YES;
}
- (void)didReceiveMemoryWarning{[super didReceiveMemoryWarning];}
@end
