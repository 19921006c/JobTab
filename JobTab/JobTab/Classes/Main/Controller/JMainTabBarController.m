//
//  JMainTabBarController.m
//  JobTab
//
//  Created by silent on 16/3/25.
//  Copyright © 2016年 joe. All rights reserved.
//

#import "JMainTabBarController.h"
#import "JMainNavigationController.h"

#import "JHomeViewController.h"
#import "JProfileViewController.h"

#import "UIImage+Image.h"
@interface JMainTabBarController ()

@property (nonatomic, weak)JHomeViewController *homeVc;

@property (nonatomic, weak)JProfileViewController *profileVc;

@end
@implementation JMainTabBarController

-(void)viewDidLoad
{
    //添加所有子控制器
    [self addAllChildController];
}

- (void)addAllChildController
{
    //添加单个子控制器
    
    //首页
    JHomeViewController *homeVc = [[JHomeViewController alloc]init];
    _homeVc = homeVc;
    [self addAloneChildController:homeVc title:@"首页" norImageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
    
    //我
    JProfileViewController *profileVc = [[JProfileViewController alloc]init];
    _profileVc = profileVc;
    [self addAloneChildController:profileVc title:@"我" norImageName:@"tabbar_profile" selectedImageName:@"tabbar_profile_selected"];
    
}

- (void)addAloneChildController:(UIViewController *)controller title:(NSString *)title norImageName:(NSString *)norImageName selectedImageName:(NSString *)selectedImageName;
{
    
    JMainNavigationController *nVc = [[JMainNavigationController alloc]initWithRootViewController:controller];
    
    controller.title = title;
    
    controller.tabBarItem.image= [UIImage imageNamed:norImageName];
    
    controller.tabBarItem.selectedImage = [UIImage imageWithOriginalName:selectedImageName];
    
    controller.tabBarItem.title = title;
    
    
    [self addChildViewController:nVc];
}

@end
