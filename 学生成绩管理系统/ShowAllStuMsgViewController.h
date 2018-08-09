//
//  ShowAllStuMsgViewController.h
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/7.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StudentMsg.h"
#import "addStuMsgViewController.h"
@interface ShowAllStuMsgViewController : UIViewController

{
    UITableView * _tableView;
}

////删除需要
//@property (nonatomic, assign) NSInteger zhiweiInt;

//方法很简单 每次随机建立10个学生信息

@property (nonatomic, copy) NSMutableArray * allStuArray;

@property (nonatomic, assign) NSInteger numInt;

//还需要5个数组分别储存学生的姓名 学分 学号 和两个成绩
@property (nonatomic, strong) NSMutableArray * nameArray1;

@property (nonatomic, strong) NSMutableArray * creditArray1;

@property (nonatomic, strong) NSMutableArray * peArray1;

@property (nonatomic, strong) NSMutableArray * numArray1;

@property (nonatomic, strong) NSMutableArray * mathArray1;


@property (nonatomic, copy) NSString * nameStr;

@property (nonatomic, copy) NSString * creditStr;

@property (nonatomic, copy) NSString * numStr;

@property (nonatomic, copy) NSString * mathStr;

@property (nonatomic, copy) NSString * peStr;


//.m文件相关

@property (nonatomic, assign) NSInteger mathInt;

@property (nonatomic, assign) NSInteger credInt;

@property (nonatomic, assign) NSInteger peInt;

@property (nonatomic, assign) NSInteger nuInt;



@property (nonatomic ,copy) NSArray * XMathArray;

@property (nonatomic, copy) NSArray * XCredArray;

@property (nonatomic, copy) NSArray * XPEArray;

@property (nonatomic, copy) NSArray * XNumArray;

@property (nonatomic, copy) NSArray * XNameArray;

//删除相关
@property (nonatomic, assign) NSUInteger locaUint;

//删除需要
@property (nonatomic, assign) NSInteger zhiweiInt;

@property (nonatomic, copy) NSArray * deleteShowArray;

@property (nonatomic, assign) NSInteger saveDeleteIndexInt;

//修改需要
@property (nonatomic, copy) NSArray * CPEArray;

@property (nonatomic, copy) NSArray * CMathArray;

@property (nonatomic, copy) NSArray * CCreditArray;

//位置
@property (nonatomic, copy) NSArray * CLocationArray;


@property (nonatomic, assign) NSInteger changPEIndexInt;

@property (nonatomic, assign) NSUInteger peLocaUint;

//修改 接收传入的成绩与学号
@property (nonatomic, assign) NSInteger recivePEInt;

@property (nonatomic, assign) NSInteger reciveMathInt;

@property (nonatomic, assign) NSInteger reciveCreditInt;

@property (nonatomic, assign) NSInteger findNumInt;

@property (nonatomic, assign) NSInteger reciveLoactionInt;

@end
