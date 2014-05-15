//
//  HYZViewController.m
//  FindKey
//
//  Created by hanyazhou on 14-5-15.
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
    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:
                         @"value1",@"key1",
                         @"value2",@"key2",
                         @"value3",@"key3",
                         @"value4",@"key4",
                         @"value5",@"key5",
                         @"value6",@"key6",
                         @"value7",@"key7",
                         @"value8",@"key8",
                         @"value9",@"key9",
                         @"value10",@"key10", nil];
    for (NSString *keyString in [dic allKeys]) {
//        输出的如果有一个1，说明有这个key，如果全是0，说明没有着key
        NSLog(@"%d",[HYZOpinion keyString:keyString hasThisKey:@"key1"]);
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
