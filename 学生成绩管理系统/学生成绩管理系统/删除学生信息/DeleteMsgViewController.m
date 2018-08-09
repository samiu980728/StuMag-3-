//
//  DeleteMsgViewController.m
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/8.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "DeleteMsgViewController.h"

//@protocol deleteStuMsgViewControllerDelegate
//
////还是需要协议传值 把学号传入  主界面 再通过属性传值 传入展示界面 找到该值 在num数组中的位置 分别删除 5个数组在那一个位置的元素 OK
//- (void)returnNumlocationTextField:(NSInteger)numLocation;
//
//@end

@interface DeleteMsgViewController ()

@end
////还是需要协议传值 把学号传入  主界面 再通过属性传值 传入展示界面 找到该值 在num数组中的位置 分别删除 5个数组在那一个位置的元素 OK
//- (void)returnNumlocationTextField:(NSInteger)numLocation;

@implementation DeleteMsgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _deletedStuNumTextField = [[UITextField alloc] init];
    _deletedStuNumTextField.frame = CGRectMake(120, 250, 260, 30);
    _deletedStuNumTextField.placeholder = @"请输入想要删除的学生学号";
    [self.view addSubview:_deletedStuNumTextField];
    
    _backOldButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _backOldButton.frame = CGRectMake(120, 180, 260, 30);
    [_backOldButton setTitle:@"删除完成，返回主界面" forState:UIControlStateNormal];
    [_backOldButton addTarget:self action:@selector(pressOldBackButton:) forControlEvents:UIControlEventTouchUpInside];
    [_backOldButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:_backOldButton];
    
}

- (void)pressOldBackButton:(UIButton *)btn
{
    [_delegate returnNumlocationTextField:[_deletedStuNumTextField.text integerValue]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
