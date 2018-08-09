//
//  RegisterViewController.h
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/7.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol registerViewControllerDelegate <NSObject>

- (void)transmitTextFiled:(NSString *)string;

- (void)passWordTransFromTextFiled:(NSString *)string;

@end

@interface RegisterViewController : UIViewController

@property (nonatomic, strong) UITextField * regCountTextFiled;

@property (nonatomic, strong) UITextField * regPassTextFiled;

//委托代理
@property (nonatomic, weak) id <registerViewControllerDelegate> delegate;

@end
