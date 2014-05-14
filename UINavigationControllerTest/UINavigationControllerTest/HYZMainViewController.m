//
//  HYZMainViewController.m
//  UINavigationControllerTest
//
//  Created by hanyazhou on 14-4-23.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZMainViewController.h"

@interface HYZMainViewController ()

@end

@implementation HYZMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController  setToolbarHidden:NO animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(selectLeftAction:)];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd  target:self action:@selector(selectRightAction:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    
    NSArray *array = [NSArray arrayWithObjects:@"哎",@"呦",@"卧",@"槽", nil];
    UISegmentedControl *segmentedController = [[UISegmentedControl alloc] initWithItems:array];
    segmentedController.segmentedControlStyle = UISegmentedControlSegmentCenter;
    
    [segmentedController addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = segmentedController;
    
//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"根视图" style:UIBarButtonItemStyleDone target:nil action:nil];
//    self.navigationItem.backBarButtonItem = backButton;
    
    
//#if __IPHONE_3_0 <= __IPHONE_OS_VERSION_MAX_ALLOWED
//    ,
//    ,
//#endif
//#if __IPHONE_4_0 <= __IPHONE_OS_VERSION_MAX_ALLOWED
//    ,
    
    
    [self.navigationController  setToolbarHidden:NO animated:YES]; 

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"你个傻逼" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor redColor]];
    [button sizeToFit];
    UIBarButtonItem *one1 = [[UIBarButtonItem alloc] initWithCustomView:button];
//    UIBarButtonItem *one1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:nil action:nil];
    UIBarButtonItem *one2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:nil action:nil];
    UIBarButtonItem *one3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:nil action:nil];
    UIBarButtonItem *one4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:nil action:nil];
    UIBarButtonItem *one5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    UIBarButtonItem *one6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *one7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    UIBarButtonItem *one8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:nil action:nil];
    UIBarButtonItem *one9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:nil action:nil];
//    UIBarButtonItem *one10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:nil action:nil];
//    UIBarButtonItem *one11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:nil action:nil];
//    UIBarButtonItem *one12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:nil action:nil];
//    UIBarButtonItem *one13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:nil action:nil];
//    UIBarButtonItem *one14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:nil action:nil];
//    UIBarButtonItem *one15= [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:nil action:nil];
//    UIBarButtonItem *one16= [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:nil action:nil];
//    UIBarButtonItem *one17= [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:nil action:nil];
//    UIBarButtonItem *one18= [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPause target:nil action:nil];
//    UIBarButtonItem *one19= [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:nil action:nil];
//    UIBarButtonItem *one20= [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:nil action:nil];
//    UIBarButtonItem *one21= [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemUndo target:nil action:nil];
//    UIBarButtonItem *one22= [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRedo target:nil action:nil];
//    UIBarButtonItem *one23= [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPageCurl target:nil action:nil];
    
    
//    [self setToolbarItems:[NSArray arrayWithObjects:one1, one2, one3, one4, one5, one6, one7, one8, one9,one10, one11, one12, one13, one14, one15, one16, one17, one18,one19, one20, one21, one22, one23, nil]];
    [self setToolbarItems:[NSArray arrayWithObjects:one1, one2, one3, one4, one5, one6, one7, one8, one9, nil]];
    
}

-(void)segmentAction:(id)sender
{
//    switch ([sender selectedSegmentIndex]) {
//        case 0:
//        {
//            UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你点击了鸡翅" delegate:self  cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//            [alter show];
//        
//        }
//            break;
//        case 1:
//        {
//            UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你点击了排骨" delegate:self  cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//            [alter show];
//        }
//            break;
//            
//        default:
//            break;
//    }
    [self.navigationController pushViewController:[[HYZFirstViewController alloc] init] animated:YES];
}

-(void)selectLeftAction:(id)sender
{
//    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你点击了导航栏左按钮" delegate:self  cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//    [alter show];
    [self.navigationController pushViewController:[[HYZFirstViewController alloc] init] animated:YES];
}

-(void)selectRightAction:(id)sender
{
//    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你点击了导航栏右按钮" delegate:self  cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//    [alter show];
    [self.navigationController pushViewController:[[HYZFirstViewController alloc] init] animated:YES];
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
