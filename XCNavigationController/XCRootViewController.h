//
//  XCRootViewController.h
//  XCNavigationController
//
//  Created by xiangchao on 16/4/20.
//  Copyright © 2016年 STV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XCRootViewController : UINavigationController
/**
 App的根导航控制器
 */
+ (instancetype)sharedRootNavigationController;
@end
