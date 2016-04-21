//
//  XCNavigationViewController.m
//  XCNavigationController
//
//  Created by xiangchao on 16/4/20.
//  Copyright © 2016年 STV. All rights reserved.
//

#import "XCNavigationViewController.h"

@interface XCNavigationViewController ()

@end

@implementation XCNavigationViewController

+ (UIViewController *)wrapViewController:(UIViewController *)viewController
{
    XCNavigationViewController *nav = [[self alloc] init];
    nav.viewControllers = @[viewController];
    UIViewController *vc = [UIViewController new];
    [vc.view addSubview:nav.view];
    [vc addChildViewController:nav];
    return vc;
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    UIViewController *wrapViewController = [XCNavigationViewController wrapViewController:viewController];
    UINavigationController *nav = (UINavigationController *)[[[UIApplication sharedApplication] delegate] window].rootViewController;
    [nav pushViewController:wrapViewController animated:animated];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    UINavigationController *nav = (UINavigationController *)[[[UIApplication sharedApplication] delegate] window].rootViewController;
    return [nav popViewControllerAnimated:animated];
}


@end
