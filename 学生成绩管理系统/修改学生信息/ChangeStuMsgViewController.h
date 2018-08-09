//
//  ChangeStuMsgViewController.h
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/9.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <UIKit/UIKit.h>

//需要传值协议 把修改后的姓名成绩等信息传入 主界面 再经由主界面传入展示界面
//展示界面接收需要通过数组接收 传到展示界面 也得用数组传递  
@protocol changeStuMsgViewControllerDelegate

- (void)backPETextFiled:(NSInteger)peScore andMath:(NSInteger)mathScore andCredit:(NSInteger)creditScore andLocation:(NSInteger)changeNumLoaction;

@end


@interface ChangeStuMsgViewController : UIViewController

////不能修改姓名
//@property (nonatomic, strong) UITextField * changeNameTextField;

@property (nonatomic, strong) UITextField * changeMathTextField;

@property (nonatomic, strong) UITextField * changePETextField;

@property (nonatomic, strong) UITextField * changeCreditTextField;

@property (nonatomic, strong) UITextField * changeLocationTextField;

@property (nonatomic, strong) UIButton * backChangeButton;


//委托代理
@property (nonatomic, weak) id <changeStuMsgViewControllerDelegate>delegate;

@end
