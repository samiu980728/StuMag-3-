//
//  addStuMsgViewController.m
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/7.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "addStuMsgViewController.h"

@interface addStuMsgViewController ()

@end

@implementation addStuMsgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _locationTextFiled = [[UITextField alloc] init];
    _locationTextFiled.frame = CGRectMake(80, 50, 300, 30);
    _locationTextFiled.placeholder = @"请输入您想要添加的位置";
    
    _nameTextFiled = [[UITextField alloc] init];
    _nameTextFiled.frame = CGRectMake(80, 90, 300, 30);
    _nameTextFiled.placeholder = @"请输入学生姓名";
    
    _numTextFiled = [[UITextField alloc] init];
    _numTextFiled.frame = CGRectMake(80, 130, 300, 30);
    _numTextFiled.placeholder = @"请输入学生学号";
    
    _mathTextFiled = [[UITextField alloc] init];
    _mathTextFiled.frame = CGRectMake(80, 170, 300, 30);
    _mathTextFiled.placeholder = @"请输入学生数学成绩";
    
    _peTextFiled = [[UITextField alloc] init];
    _peTextFiled.frame = CGRectMake(80, 210, 300, 30);
    _peTextFiled.placeholder = @"请输入学生体育成绩";
    
    _creditTextFiled = [[UITextField alloc] init];
    _creditTextFiled.frame = CGRectMake(80, 250, 300, 30);
    _creditTextFiled.placeholder = @"请输入学生学分";
    
    UIButton * backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [backButton setTitle:@"添加成功，返回上一层" forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(pressBackButton:) forControlEvents:UIControlEventTouchUpInside];
    backButton.frame = CGRectMake(80, 300, 200, 30);
    
    [self.view addSubview:_locationTextFiled];
    
    [self.view addSubview:_nameTextFiled];
    [self.view addSubview:_numTextFiled];
    [self.view addSubview:_mathTextFiled];
    [self.view addSubview:_peTextFiled];
    [self.view addSubview:_creditTextFiled];
    
    [self.view addSubview:backButton];
    
}

- (void)pressBackButton:(UIButton *)btn
{
    NSLog(@"销毁前调用");
    [_delegate getLocationTextFiled:[_locationTextFiled.text integerValue] andName:[NSString stringWithFormat:@"%@",_nameTextFiled.text] andNum:[_numTextFiled.text integerValue] andMath:[_mathTextFiled.text integerValue] andPE:[_peTextFiled.text integerValue] andCredit:[_creditTextFiled.text integerValue]];
    NSLog(@"_nameTextFiled.text = %@",_nameTextFiled.text);

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
