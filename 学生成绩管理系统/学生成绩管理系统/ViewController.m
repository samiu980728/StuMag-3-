//
//  ViewController.m
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/5.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "ViewController.h"

#import "RegisterViewController.h"
#import "LogInViewController.h"
@interface ViewController ()<addStuMsgViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化
    
    
    
    //给数组加两个初始数据
    _numCountInt = 0;
    _saveCountarray = [NSMutableArray arrayWithObjects:@"tcaihong",@"123456", nil];
    
    _savePassarray = [NSMutableArray arrayWithObjects:@"t123456",@"123456", nil];
    
    
    
    
    _CountTextFiled = [[UITextField alloc] init];
    _CountTextFiled.frame = CGRectMake(100, 50, 300, 30);
    _CountTextFiled.placeholder = @"请输入账号";
    //_CountTextFiled.text = _countStr;
    
    _PassTextFiled = [[UITextField alloc] init];
    _PassTextFiled.frame = CGRectMake(100, 100, 300, 30);
    _PassTextFiled.placeholder = @"请输入密码";
    
    
    
    UIButton * logInButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton * RegisterButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    logInButton.frame = CGRectMake(100, 150, 150, 30);
    //logInButton.titleLabel.text = @"登录";
    [logInButton setTitle:@"登录" forState:UIControlStateNormal];
    [logInButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [logInButton addTarget:self action:@selector(pressLogin:) forControlEvents:UIControlEventTouchUpInside];
    
    RegisterButton.frame = CGRectMake(270, 150, 130, 30);
    //RegisterButton.titleLabel.text = @"注册";
    [RegisterButton setTitle:@"注册" forState:UIControlStateNormal];
    [RegisterButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [RegisterButton addTarget:self action:@selector(pressRegister:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:logInButton];
    [self.view addSubview:RegisterButton];
    [self.view addSubview:_CountTextFiled];
    [self.view addSubview:_PassTextFiled];
    
//    addStuMsgViewController * addViewController = [[addStuMsgViewController alloc] init];
//    addViewController.delegate = self;
    
//    NSLog(@"_naArray1 = %@",_naArray1);
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

////添加学生信息协议
//- (void)getLocationTextFiled:(NSInteger)location andName:(NSString *)name andNum:(NSInteger)num andMath:(NSInteger)math andPE:(NSInteger)PE andCredit:(NSInteger)credit
//{
//
//    //添加到学生类中
//    NSLog(@"************ShowAllStuMsgViewController*********");
//
//        [_naArray1 insertObject:name atIndex:location];
//        [_nuArray1 insertObject:[NSNumber numberWithInteger:num] atIndex:location];
//        [_maArray1 insertObject:[NSNumber numberWithInteger:math] atIndex:location];
//        [_pArray1 insertObject:[NSNumber numberWithInteger:PE] atIndex:location];
//        [_crArray1 insertObject:[NSNumber numberWithInteger:credit] atIndex:location];
//
//}


- (void)pressLogin:(UIButton *)btn
{
    int j = 0;
    for ( int i = 0; i < [_savePassarray count]; i++ ){
        if ( ([_PassTextFiled.text isEqualToString:_savePassarray[i]]) && ([_CountTextFiled.text isEqualToString:_saveCountarray[i]]) ){
            LogInViewController * logInView = [[LogInViewController alloc] init];
            [self presentViewController:logInView animated:YES completion:nil];
            j = 1;
            break;
        }
    }
    if ( j == 0 ){
        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"您的账号或密码错误，请重新输入" message:@"下次想好" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction * action1 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:nil];
        
        UIAlertAction * action2 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:action1];
        [alert addAction:action2];
        [self presentViewController:alert animated:YES completion:nil];
        //[self.view addSubview:alert];
        
    }
    
//    LogInViewController * logInView = [[LogInViewController alloc] init];
//    [self presentViewController:logInView animated:YES completion:nil];
}

- (void)pressRegister:(UIButton *)btn
{
    RegisterViewController * registerView = [[RegisterViewController alloc] init];
    registerView.delegate = self;
    
    [self presentViewController:registerView animated:YES completion:nil];
}

- (void)transmitTextFiled:(NSString *)string
{
    _CountTextFiled.text = string;
    [_saveCountarray addObject:string];
    //_countStr = string;
}
//- (void)dealloc{
//    NSLog(@"ViewController %s",__func__);
//}
- (void)passWordTransFromTextFiled:(NSString *)string
{
    _PassTextFiled.text = string;
    [_savePassarray addObject:string];
}

- (void)viewWillAppear:(BOOL)animated
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
