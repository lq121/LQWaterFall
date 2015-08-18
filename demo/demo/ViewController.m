//
//  ViewController.m
//  demo
//
//  Created by leyi on 15/8/18.
//  Copyright (c) 2015年 LQ. All rights reserved.
//

#import "ViewController.h"
#import "LQTableViewController.h"
#import "LQCollectionViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LQTableViewController *tableVC = [[LQTableViewController alloc]init];
    [self addChildViewController:tableVC];
    UITableView *myTableView = tableVC.tableView;
    myTableView.frame = CGRectMake(0, 0,100, LQHEIGHT);
    [self.view addSubview:myTableView];
    
    LQCollectionViewController *collectionVC =[[LQCollectionViewController alloc]init];
    [self addChildViewController:collectionVC];
    UICollectionView *myCollectionView = collectionVC.collectionView;
    myCollectionView.frame = CGRectMake(100, 64, LQWIDTH - 100, LQHEIGHT-64);
    [self.view addSubview:myCollectionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
