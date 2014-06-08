//
//  HYZViewController.m
//  TableViewTest
//
//  Created by hanyazhou on 14-6-8.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZViewController.h"

@interface HYZViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) NSMutableArray *currentArray;
@end

@implementation HYZViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _dataArray = [@[@"aaaaa",@"bbbbb",@"ccccc",@"ddddd",@"eeeee",@"fffff",@"ggggg",@"hhhhh",@"iiiii",@"jjjjj",@"kkkkk",@"lllll",@"mmmmm",@"nnnnn",@"ooooo",@"ppppp",@"qqqqq",@"rrrrr"] mutableCopy];
    _currentArray = [NSMutableArray array];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height-64) style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

#pragma mark -
#pragma mark UITABLEVIEWDATASOURCEANDDELEGATE -

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return @"收藏夹";
    }else{
        return @"商品";
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        if ([_currentArray count] == 0) {
            return 1;
        }else{
        return [_currentArray count];
        }
    }else{
        return [_dataArray count];
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identfire = @"identifire";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identfire];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identfire];
    }
    
    if (indexPath.section == 0) {
        if ([_currentArray count] == 0) {
            cell.textLabel.text = @" 长按添加";
        }else{
            cell.textLabel.text = _currentArray[indexPath.row];
        }
        
    }else{
        UILongPressGestureRecognizer *recognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPress:)];
        recognizer.minimumPressDuration = 1.0;
        [cell addGestureRecognizer:recognizer];
        cell.textLabel.text = _dataArray[indexPath.row];
    }
    return cell;
}

- (void)longPress:(UILongPressGestureRecognizer *)recognizer{
    CGPoint point = [recognizer locationInView:self.tableView];
    if (recognizer.state == UIGestureRecognizerStateBegan) {
        NSIndexPath * indexPath = [self.tableView indexPathForRowAtPoint:point];
        if(indexPath == nil) return ;
        else{
            [_currentArray addObject:_dataArray[indexPath.row]];
            [_dataArray removeObjectAtIndex:indexPath.row];
            [_tableView reloadData];
        }

    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
