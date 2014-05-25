//
//  HYZViewController.m
//  CheckBox
//
//  Created by hanyazhou on 14-5-23.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZViewController.h"

@interface HYZViewController ()

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
    
    NSArray *array = [NSArray arrayWithObjects:@"选择",@"删除",@"提交", nil];
    UISegmentedControl *segmentedController = [[UISegmentedControl alloc] initWithItems:array];
    
    [segmentedController addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = segmentedController;
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    _temporaryDictionary = [NSMutableDictionary dictionary];
    _submmitArray = [NSMutableArray array];
    
    _messageArray = [[NSMutableArray alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Message" ofType:@"plist"]];
}

-(void)segmentAction:(id)sender{
    switch ([sender selectedSegmentIndex]) {
        case 0:
        {
            self.tableView.editing = YES;
        }
            break;
        case 1:
        {
            self.tableView.editing = NO;
            if ([[_temporaryDictionary allKeys] count]== 0) {
                UIAlertView *alertView = [[UIAlertView alloc]
                                          initWithTitle:@"Oh BABY !"
                                          message:@"You must choice at least one !"
                                          delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil, nil];
                [alertView show];
            }else{
                [_messageArray removeObjectsInArray:[_temporaryDictionary allKeys]];
                
                [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithArray:[_temporaryDictionary allValues]] withRowAnimation:UITableViewRowAnimationLeft];
                [_temporaryDictionary removeAllObjects];
            }
        }
            break;
        case 2:
        {
            self.tableView.editing = NO;
            NSLog(@"___%@___",_submmitArray);
//        如果数据提交成功，将_submmitArray里边的所有元素全部清空
            [_submmitArray removeAllObjects];
        }
            break;
            
        default:
            break;
    }
}

#pragma mark -
#pragma mark UITABLEVIEWDATASOURCE_AND_UITABLEVIEWDELEGATE -
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_messageArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HYZTableViewCell * cell = [[HYZTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    cell.myTitleLable.text = _messageArray[indexPath.row][@"name"];
    cell.myPriceLable.text = [NSString stringWithFormat:@"单价:    %@",_messageArray[indexPath.row][@"price"]];
    cell.numberTextField.text = _messageArray[indexPath.row][@"number"];
    return cell;
}
/*
    //实现可删除和插入
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete | UITableViewCellEditingStyleInsert;
}
//选中
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [_temporaryDictionary setObject:indexPath forKey:[_messageArray objectAtIndex:indexPath.row]];
    [_submmitArray addObject:[_messageArray objectAtIndex:indexPath.row]];
}
//取消选中
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    [_temporaryDictionary removeObjectForKey:[_messageArray objectAtIndex:indexPath.row]];
    [_submmitArray removeObjectAtIndex:indexPath.row];
}
 */
//可编辑删除
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
//删除事件
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_messageArray removeObjectAtIndex:indexPath.row];
            // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        NSLog(@"delete cell %lu" , indexPath.row);
        
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
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
