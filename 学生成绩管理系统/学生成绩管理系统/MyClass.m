//
//  MyClass.m
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/7.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

- (id)initWithClassName:(NSString *)className
{
    self = [super init];
    if (self){
        _className = className;
        _stuList = [NSMutableArray array];
    }
    return self;
}

- (void)addStudent:(StudentMsg *)aStudent
{
    if (![_stuList containsObject:aStudent]){
        [_stuList addObject:aStudent];
    }
}

//查找学生数量
- (NSInteger)numOfStudent
{
//    NSInteger num;
//    num = 0;
    
    return [_stuList count];
    
}

@end
