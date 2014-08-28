//
//  HYZAppDelegate.h
//  MyMenu
//
//  Created by hanyazhou on 14-8-26.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HYZViewController.h"
#import "HYZMainViewController.h"
#import "TWTSideMenuViewController.h"

@interface HYZAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong, nonatomic) HYZViewController *viewController;
@property (strong, nonatomic) HYZMainViewController *mainViewController;
@property (strong, nonatomic) TWTSideMenuViewController *sideMenuViewController;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
