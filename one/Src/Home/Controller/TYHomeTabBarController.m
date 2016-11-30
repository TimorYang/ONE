//
//  TYHomeTabBarController.m
//  one
//
//  Created by TimorYang on 2016/11/30.
//  Copyright © 2016年 timoryang. All rights reserved.
//

#import "TYHomeTabBarController.h"
#import "TYHomeNavigationController.h"
#import "TYReadNavigationController.h"
#import "TYMusicNavgationController.h"
#import "TYMovieNavigationController.h"
#import "TYHomeViewController.h"
#import "TYReadViewController.h"
#import "TYMusicViewController.h"
#import "TYMovieViewController.h"

@interface TYHomeTabBarController ()

@end

@implementation TYHomeTabBarController

#pragma mark - LifeCycle
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
    
    //创建Home
    TYHomeViewController *homeViewController = [[TYHomeViewController alloc]init];
    homeViewController.view.backgroundColor = [UIColor blueColor];
    TYHomeNavigationController *homeNavigationController = [[TYHomeNavigationController alloc]initWithRootViewController:homeViewController];
    homeNavigationController.tabBarItem.image = [UIImage imageNamed:@"tab_home_default"];
     homeNavigationController.tabBarItem.selectedImage = [UIImage imageNamed:@"tab_home_selected"];
    homeNavigationController.tabBarItem.title = @"首页";
    [self addChildViewController:homeNavigationController];
    
    //创建read
    TYReadViewController *readViewController = [[TYReadViewController alloc]init];
    readViewController.view.backgroundColor = [UIColor redColor];
    TYReadNavigationController *readNavigationController = [[TYReadNavigationController alloc]initWithRootViewController:readViewController];
    readNavigationController.tabBarItem.image = [UIImage imageNamed:@"tab_reading_default"];
    readNavigationController.tabBarItem.selectedImage = [UIImage imageNamed:@"tab_reading_selected"];
    readNavigationController.tabBarItem.title = @"阅读";
    [self addChildViewController:readNavigationController];
    
    //创建Music
    TYMusicViewController *musicViewController = [[TYMusicViewController alloc]init];
    musicViewController.view.backgroundColor = [UIColor greenColor];
    TYMusicNavgationController *musicNavigationController = [[TYMusicNavgationController alloc]initWithRootViewController:musicViewController];
    musicNavigationController.tabBarItem.image = [UIImage imageNamed:@"tab_music_default"];
    musicNavigationController.tabBarItem.selectedImage = [UIImage imageNamed:@"tab_music_selected"];
    musicNavigationController.tabBarItem.title = @"音乐";
    [self addChildViewController:musicNavigationController];
    
    //创建Movie
    TYMovieViewController *movieViewController = [[TYMovieViewController alloc]init];
    TYMovieNavigationController *movieNavigationController = [[TYMovieNavigationController alloc]initWithRootViewController:movieViewController];
    movieNavigationController.tabBarItem.image = [UIImage imageNamed:@"tab_movie_default"];
    movieNavigationController.tabBarItem.selectedImage = [UIImage imageNamed:@"tab_movie_selected"];
    movieNavigationController.tabBarItem.title = @"电影";
    [self addChildViewController:movieNavigationController];
    
}



@end
