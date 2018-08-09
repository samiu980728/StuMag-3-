//
//  MyClass.h
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/7.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentMsg.h"
@interface MyClass : NSObject

@property (nonatomic, copy) NSString * className;

@property (nonatomic, copy) NSMutableArray * stuList;

- (id)initWithClassName:(NSString *)className;

//添加学生
- (void)addStudent:(StudentMsg *)aStudent;

//学生数量
- (NSInteger)numOfStudent;

@end
