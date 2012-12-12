//
//  TabBarController.h
//  dragonfly
//
//  Created by Raymond Hendy on 12/12/12.
//  Copyright (c) 2012 NUS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabBarController : UITabBarController<UITabBarControllerDelegate,    UINavigationControllerDelegate> 
{
    UITabBarController *tabController;
    UINavigationController *firstNavigationController;
    UINavigationController *secondNavigationController;
}

@property (nonatomic, retain) UITabBarController *tabController;
@property (nonatomic, retain) UINavigationController *firstNavigationController;
@property (nonatomic, retain) UINavigationController *secondNavigationController;

@end
