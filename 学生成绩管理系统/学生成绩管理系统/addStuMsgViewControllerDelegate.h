//
//  addStuMsgViewControllerDelegate.h
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/8.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol addStuMsgViewControllerDelegate
- (void)getLocationTextFiled:(NSInteger)location andName:(NSString *)name andNum:(NSInteger)num andMath:(NSInteger)math andPE:(NSInteger)PE andCredit:(NSInteger)credit;

@end
@interface addStuMsgViewControllerDelegate : NSObject

@end
