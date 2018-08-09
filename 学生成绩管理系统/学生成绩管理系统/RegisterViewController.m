//
//  RegisterViewController.m
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/7.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "RegisterViewController.h"
#import "ViewController.h"
@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _regCountTextFiled = [[UITextField alloc] init];
    _regCountTextFiled.frame = CGRectMake(100, 50, 300, 30);
    _regCountTextFiled.placeholder = @"请输入账号";
    //_CountTextFiled.text = _countStr;
    
    _regPassTextFiled = [[UITextField alloc] init];
    _regPassTextFiled.frame = CGRectMake(100, 100, 300, 30);
    _regPassTextFiled.placeholder = @"请输入密码";
    
    [self.view addSubview:_regCountTextFiled];
    [self.view addSubview:_regPassTextFiled];
    
    UIButton * returnButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    returnButton.frame = CGRectMake(100, 150, 300, 50);
    [returnButton setTitle:@"注册成功,返回登录界面" forState:UIControlStateNormal];
    [returnButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [returnButton addTarget:self action:@selector(pressReturnBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:returnButton];
    
}

- (void)pressReturnBtn:(UIButton *)btb
{
    NSLog(@"_delegate= ------%@",_delegate);
    [_delegate transmitTextFiled:_regCountTextFiled.text];
    [_delegate passWordTransFromTextFiled:_regPassTextFiled.text];
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
