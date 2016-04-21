//
//  XCRootViewController.m
//  XCNavigationController
//
//  Created by xiangchao on 16/4/20.
//  Copyright © 2016年 STV. All rights reserved.
//

#import "XCRootViewController.h"

@interface XCRootViewController () <UINavigationControllerDelegate>

@end

@implementation XCRootViewController


static XCRootViewController *_sharedInstance;
+ (instancetype)sharedRootNavigationController
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
        [_sharedInstance setNavigationBarHidden:YES];
        
    });
    return _sharedInstance;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.delegate = self;
    self.interactivePopGestureRecognizer.delegate = nil;
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    BOOL isRootVC = viewController == navigationController.viewControllers.firstObject;
    navigationController.interactivePopGestureRecognizer.enabled = !isRootVC;
}


@end
