//
//  ChangeStuMsgViewController.m
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/9.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "ChangeStuMsgViewController.h"

@interface ChangeStuMsgViewController ()

@end

@implementation ChangeStuMsgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _changeLocationTextField = [[UITextField alloc] init];
    _changeLocationTextField.frame = CGRectMake(100, 100, 300, 30);
    _changeLocationTextField.placeholder = @"请输入要修改的学生学号";
    [self.view addSubview:_changeLocationTextField];
    
    _changePETextField = [[UITextField alloc] init];
    _changePETextField.frame = CGRectMake(100, 150, 300, 30);
    _changePETextField.placeholder = @"请输入修改后的学生体育成绩";
    [self.view addSubview:_changePETextField];
    
    _changeMathTextField = [[UITextField alloc] init];
    _changeMathTextField.frame = CGRectMake(100, 200, 300, 30);
    _changeMathTextField.placeholder = @"请输入修改后的学生数学成绩";
    [self.view addSubview:_changeMathTextField];
    
    
    _changeCreditTextField = [[UITextField alloc] init];
    _changeCreditTextField.frame = CGRectMake(100, 250, 300, 30);
    _changeCreditTextField.placeholder = @"请输入修改后的学生学分";
    [self.view addSubview:_changeCreditTextField];
    
    
    
    
    _backChangeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _backChangeButton.frame = CGRectMake(100, 300, 260, 30);
    [_backChangeButton setTitle:@"修改完毕，返回主界面" forState:UIControlStateNormal];
    [_backChangeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_backChangeButton addTarget:self action:@selector(pressBackChangeButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_backChangeButton];
    
}

- (void)pressBackChangeButton:(UIButton *)btn
{
    //销毁前调用协议
    [_delegate backPETextFiled:[_changePETextField.text integerValue] andMath:[_changeMathTextField.text integerValue] andCredit:[_changeCreditTextField.text integerValue] andLocation:[_changeLocationTextField.text integerValue]];
    
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
