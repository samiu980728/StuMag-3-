//
//  DeleteMsgViewController.h
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/8.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol deleteStuMsgViewControllerDelegate

//还是需要协议传值 把学号传入  主界面 再通过属性传值 传入展示界面 找到该值 在num数组中的位置 分别删除 5个数组在那一个位置的元素 OK
- (void)returnNumlocationTextField:(NSInteger)numLocation;

@end

@interface DeleteMsgViewController : UIViewController


@property (nonatomic, strong) UITextField * deletedStuNumTextField;

@property (nonatomic, strong) UIButton * backOldButton;

//委托代理
@property (nonatomic, weak) id<deleteStuMsgViewControllerDelegate>delegate;


@end
