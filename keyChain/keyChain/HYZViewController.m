//
//  HYZViewController.m
//  keyChain
//
//  Created by hanyazhou on 14-5-25.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZViewController.h"

@interface HYZViewController ()

@end

@implementation HYZViewController

NSString * const KEY_USERNAME_PASSWORD = @"com.company.app.usernamepassword";
NSString * const KEY_USERNAME = @"com.company.app.username";
NSString * const KEY_PASSWORD = @"com.company.app.password";

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
    [self read];
}

- (void)save{
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:@"aaaaaa" forKey:KEY_USERNAME];
    [usernamepasswordKVPairs setObject:@"bbbbbb" forKey:KEY_PASSWORD];
    [HYZKeyChain save:KEY_USERNAME_PASSWORD data:usernamepasswordKVPairs];
}

- (void)read{
    NSMutableDictionary *usernamepasswordKVPairs = (NSMutableDictionary *)[HYZKeyChain load:KEY_USERNAME_PASSWORD];
    NSLog(@"________%@",[usernamepasswordKVPairs objectForKey:KEY_USERNAME]);
    NSLog(@"++++++++%@",[usernamepasswordKVPairs objectForKey:KEY_PASSWORD]);
}

- (void)delete{
    [HYZKeyChain delete:KEY_USERNAME_PASSWORD];
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
