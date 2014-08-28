//
//  HYZTestViewController.m
//  MyMenu
//
//  Created by hanyazhou on 14-8-27.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import "HYZTestViewController.h"

@interface HYZTestViewController ()

@end

@implementation HYZTestViewController

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
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 100, 60, 60);
    button.backgroundColor = [UIColor redColor];
    button.layer.cornerRadius = 30;
    
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning{[super didReceiveMemoryWarning];}

@end
