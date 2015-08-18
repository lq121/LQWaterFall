//
//  LQCollectionViewController.m
//  tableView的使用
//
//  Created by leyi on 15/8/18.
//  Copyright (c) 2015年 LQ. All rights reserved.
//

#import "LQCollectionViewController.h"
#import "LQCollectionViewFlowLayout.h"


@interface LQCollectionViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic, strong) LQCollectionViewFlowLayout *layout;

@end

@implementation LQCollectionViewController

static NSString * const reuseIdentifier = @"Cell";


- (void)viewDidLoad {
    [super viewDidLoad];
   

    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    self.collectionView.backgroundColor = [UIColor whiteColor];
   
}

- (LQCollectionViewFlowLayout *)layout
{
    if (!_layout)
    {
        _layout = [[LQCollectionViewFlowLayout alloc] init];
        _layout.minimumInteritemSpacing = 10;
        _layout.minimumLineSpacing = 10;
        _layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    }
    return _layout;
}

- (instancetype)init
{
    return [self  initWithCollectionViewLayout:self.layout];
}

#pragma mark <UICollectionViewDataSource>
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor purpleColor];
    return cell;
}

//每个视图的宽高
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat width = (LQWIDTH - 100 - 30)/ 2.0;
    return CGSizeMake(width, width + indexPath.row*10);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"-------%ld",(long)indexPath.row);
}



@end
