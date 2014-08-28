//
//  HYZCollectionViewController.h
//  MyMenu
//
//  Created by hanyazhou on 14-8-27.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HYZTestViewController.h"

#define Font 12

@interface HYZCollectionViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSArray          *contentArray;
@end
