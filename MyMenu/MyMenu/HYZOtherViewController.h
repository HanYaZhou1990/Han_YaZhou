//
//  HYZOtherViewController.h
//  MyMenu
//
//  Created by hanyazhou on 14-8-26.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TWTSideMenuViewController.h"
#import "HYZMainViewController.h"
#import "HYZCollectionViewController.h"

@interface HYZOtherViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic, strong) UICollectionView * collectionView;
@end
