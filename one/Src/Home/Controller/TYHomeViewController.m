//
//  TYHomeViewController.m
//  one
//
//  Created by TimorYang on 2016/11/30.
//  Copyright © 2016年 timoryang. All rights reserved.
//

#import "TYHomeViewController.h"

@interface TYHomeViewController ()

@end

@implementation TYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
- (void)createUI {
    UIButton *searchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    searchBtn.frame = CGRectMake(0, 0, 44, 44);
    [searchBtn setImage:[UIImage imageNamed:@"searchIcon"] forState:UIControlStateNormal];
    [searchBtn addTarget:self action:@selector(jumpToSearch) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    loginBtn.frame = CGRectMake(0, 0, 44, 44);
    loginBtn.imageEdgeInsets = UIEdgeInsetsMake(9.5, 9.5, 9.5, 9.5);
    [loginBtn setImage:[UIImage imageNamed:@"nav_me_default"] forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(jumpToLogin) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *searchItem = [[UIBarButtonItem alloc]initWithCustomView:searchBtn];
    
    UIBarButtonItem *loginItem = [[UIBarButtonItem alloc]initWithCustomView:loginBtn];
    
    UIImageView *oneLogo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"nav_title"]];

    self.navigationItem.leftBarButtonItem = searchItem;
    self.navigationItem.rightBarButtonItem = loginItem;
    self.navigationItem.titleView = oneLogo;
}

- (void)jumpToSearch {
    
}

- (void)jumpToLogin {
    
}



@end
