//
//  XCNavigationViewController.h
//  XCNavigationController
//
//  Created by xiangchao on 16/4/20.
//  Copyright © 2016年 STV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XCNavigationViewController : UINavigationController

/**
 包装ViewController
 层次结构为（由外到内）UIViewController -> UINavigationController -> viewController
 @prama viewController:要包装的ViewController
 */
+ (UIViewController *)wrapViewController:(UIViewController *)viewController;
@end
