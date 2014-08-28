//
//  HYZViewController.m
//  User
//
//  Created by hanyazhou on 14-8-28.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import "HYZViewController.h"

@interface HYZViewController ()

@end

@implementation HYZViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.navigationController.navigationBar.translucent = NO;
//        [[UINavigationBar appearance] setBarTintColor:UIColorFromRGB(0x067AB5)];
        [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navB.png"] forBarMetrics:UIBarMetricsDefault];
        [[UINavigationBar appearance] setShadowImage:[UIImage initWithColor:[UIColor clearColor]]];
        
//        修改返回按钮颜色
        [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
//        修改返回按钮前边的图片
//        [[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@"selfImage"]];
//        [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"selfImage"]];
//修改返回按钮的内容 0
        self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(leftBtnClicked)];
        
//        34405e
//        3f587e
//        46567e
    }
    return self;
}

- (void)leftBtnClicked{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning{[super didReceiveMemoryWarning];}

@end
