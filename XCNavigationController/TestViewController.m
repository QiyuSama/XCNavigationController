//
//  TestViewController.m
//
//  Created by xiangchao on 16/4/20.
//  Copyright © 2016年 STV. All rights reserved.
//

#import "TestViewController.h"
#import "XCRootViewController.h"
#define randomColor() ([UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1.0])
@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    
    self.view.backgroundColor = randomColor();
    self.navigationController.navigationBar.barTintColor = randomColor();
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
}

- (IBAction)nextBtn:(UIButton *)sender
{
    [self.navigationController pushViewController:[TestViewController new] animated:YES];
//    NSLog(@"%ld", [RootViewController sha])
}

- (void)goBack
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
