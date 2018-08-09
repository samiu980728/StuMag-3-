//
//  LogInViewController.h
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/7.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StudentMsg.h"
#import "MyClass.h"
@interface LogInViewController : UIViewController

@property (nonatomic, assign) NSInteger InCount;

//添加学生信息的5个数组
@property (nonatomic, strong) NSMutableArray * naArray1;

@property (nonatomic, strong) NSMutableArray * crArray1;

@property (nonatomic, strong) NSMutableArray * pArray1;

@property (nonatomic, strong) NSMutableArray * nuArray1;

@property (nonatomic, strong) NSMutableArray * maArray1;

@property (nonatomic, strong) NSMutableArray * locaArray1;

//删除需要
@property (nonatomic, assign) NSInteger  weizhiInt;
//这真需要
@property (nonatomic, strong) NSMutableArray * deleteLocaArray;

//修改需要
@property (nonatomic, strong) NSMutableArray * changeShowNameArray;

//真需要
@property (nonatomic, strong) NSMutableArray * changeShowMathArray;

@property (nonatomic, strong) NSMutableArray * changeShowPEArray;

@property (nonatomic, strong) NSMutableArray * changeShowCreditArray;

@property (nonatomic, strong) NSMutableArray * changShowLoactionArray;

@end
