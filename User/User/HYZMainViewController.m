//
//  HYZMainViewController.m
//  User
//
//  Created by hanyazhou on 14-8-28.
//  Copyright (c) 2014年 rumi. All rights reserved.
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *changeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    changeButton.frame = CGRectMake(10.0f, 200.0f, 200.0f, 44.0f);
    [changeButton setTitle:@"JUMP NOW" forState:UIControlStateNormal];
    [changeButton setBackgroundColor:[UIColor greenColor]];
    [changeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [changeButton addTarget:self action:@selector(changeButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeButton];
    
}

- (void)changeButtonPressed{
    [self.navigationController pushViewController:[HYZMemberViewController new] animated:YES];
}

- (void)didReceiveMemoryWarning{[super didReceiveMemoryWarning];}

@end
