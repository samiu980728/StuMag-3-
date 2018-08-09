//
//  ViewController.h
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/5.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterViewController.h"
#import "addStuMsgViewController.h"




@interface ViewController : UIViewController<registerViewControllerDelegate>

@property (nonatomic, strong) UITextField * CountTextFiled;

@property (nonatomic, strong) UITextField * PassTextFiled;

@property (nonatomic, copy) NSString * countStr;

@property (nonatomic, copy) NSString * passStr;

//可变数组 存储密码什么的
@property (nonatomic, copy) NSMutableArray * saveCountarray;

@property (nonatomic, copy) NSMutableArray * savePassarray;

@property (nonatomic, assign) NSInteger numCountInt;


////添加学生信息的5个数组
//@property (nonatomic, copy) NSMutableArray * naArray1;
//
//@property (nonatomic, copy) NSMutableArray * crArray1;
//
//@property (nonatomic, copy) NSMutableArray * pArray1;
//
//@property (nonatomic, copy) NSMutableArray * nuArray1;
//
//@property (nonatomic, copy) NSMutableArray * maArray1;


@end

