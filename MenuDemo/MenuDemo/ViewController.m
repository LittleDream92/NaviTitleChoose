//
//  ViewController.m
//  MenuDemo
//
//  Created by Meng Fan on 16/6/3.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

#import "ViewController.h"
#import "KTDropdownMenuView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.244 green:0.476 blue:1.000 alpha:0.200]];
    
    NSArray *titleArray = @[@"首页", @"朋友圈", @"特别关注", @"我的关注", @"明星"];

    KTDropdownMenuView *menuView = [[KTDropdownMenuView alloc] initWithFrame:CGRectMake(0, 0, 100, 44) titles:titleArray];
    menuView.selectedAtIndex = ^(int index) {
        NSLog(@"selected title is %@", titleArray[index]);
    };
    menuView.width = 300;
    self.navigationItem.titleView = menuView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
