//
//  TabBarController.m
//  dragonfly
//
//  Created by Raymond Hendy on 12/12/12.
//  Copyright (c) 2012 NUS. All rights reserved.
//

#import "TabBarController.h"
#import "PAWWallViewController.h"

@interface TabBarController ()

@end

@implementation TabBarController

@synthesize tabController;
@synthesize firstNavigationController;
@synthesize secondNavigationController;

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
	// Do any additional setup after loading the view.
	tabController = [[UITabBarController alloc] init];
	tabController.delegate = self;
	tabController.tabBar.backgroundColor = [UIColor clearColor];
	
	//Add some tabs to the controller...
	PAWWallViewController *firstViewController = [[PAWWallViewController alloc] initWithNibName:nil bundle: nil];
	firstNavigationController = [[UINavigationController alloc] initWithRootViewController:firstViewController];
	firstNavigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Wall" image:nil tag:1];
	
	PAWWallViewController *secondViewController = [[PAWWallViewController alloc] initWithNibName:nil bundle: nil];
	secondNavigationController = [[UINavigationController alloc] initWithRootViewController:secondViewController];
	secondNavigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Profile" image:nil tag:2];
	tabController.viewControllers = [NSArray arrayWithObjects: firstNavigationController,secondNavigationController,nil];
	[self.view addSubview:tabController.view];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
