//
//  HYZCollectionViewController.m
//  MyMenu
//
//  Created by hanyazhou on 14-8-27.
//  Copyright (c) 2014年 rumi. All rights reserved.
//

#import "HYZCollectionViewController.h"

@interface HYZCollectionViewController ()

@end

@implementation HYZCollectionViewController

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

    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    [layout setScrollDirection:UICollectionViewScrollDirectionVertical];
    layout.minimumInteritemSpacing = 1.0f;
    
    _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    _collectionView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_collectionView];
    _contentArray = @[@"啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊啊啊啊啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊啊啊啊啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊",@"啊啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊啊啊啊啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊",@"啊啊",@"啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊啊啊啊啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊啊啊啊啊",@"啊",@"啊啊啊啊啊啊",@"啊",@"啊啊",@"啊啊啊啊啊",@"啊啊啊啊啊啊",@"啊",@"啊啊啊啊啊啊",@"啊啊",@"啊啊啊",@"啊啊啊啊",@"啊",@"啊啊"];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _contentArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell =[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    UILabel *lable = [[UILabel alloc] init];
    lable.text = _contentArray[indexPath.row];
    lable.backgroundColor = [UIColor redColor];
#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_6_0
    lable.textAlignment = UITextAlignmentCenter;
#else
    lable.textAlignment = NSTextAlignmentCenter;
#endif
    lable.font = [UIFont systemFontOfSize:Font];
    cell.backgroundView = lable;
    return cell;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    UIEdgeInsets top = {5,10,15,10};
    return top;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake([self width:_contentArray[indexPath.row] IndexPath:indexPath], 30);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%lu",indexPath.row);
    [self.navigationController pushViewController:[[HYZTestViewController alloc] init] animated:YES];
}

- (CGFloat)width:(NSString *)contentString IndexPath:(NSIndexPath *)indexPath{
    CGFloat f = 30;
    UIFont *font = [UIFont systemFontOfSize:Font];
    NSString *s = _contentArray[indexPath.row];
#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_7_0
    CGSize size = [s sizeWithFont:font constrainedToSize:CGSizeMake(CGFLOAT_MAX, f)];
    return size.width +10 ;
#else
    NSDictionary *attributesDic = @{NSFontAttributeName:font};
    CGSize size = [s boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, f) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributesDic context:nil].size;
    return size.width + 10;
#endif
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
