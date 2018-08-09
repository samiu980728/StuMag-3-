//
//  ShowAllStuMsgViewController.m
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/7.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "ShowAllStuMsgViewController.h"
#import "StudentMsg.h"
#import "MyClass.h"
#import "ShowTableViewCell.h"
#import "addStuMsgViewController.h"


@interface ShowAllStuMsgViewController ()
<
UITableViewDelegate,
UITableViewDataSource
>
//addStuMsgViewControllerDelegate

//在这里 把weizhiInt 的值再赋值给一个变量

@end

@implementation ShowAllStuMsgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _numInt = 0;

    MyClass * iosClass = [[MyClass alloc] initWithClassName:@"iOS班级"];
    
//    //删除集体位置的 代码放在这里
//    _locaUint = [_numArray1 indexOfObject:[NSNumber numberWithInteger:_zhiweiInt]];
    
    //这里还没有改好 每次只能添加一个学生
    _nameArray1 = [[NSMutableArray alloc]init];
    _numArray1 = [[NSMutableArray alloc]init];
    _mathArray1 = [[NSMutableArray alloc]init];
    _peArray1 = [[NSMutableArray alloc]init];
    _creditArray1 = [[NSMutableArray alloc]init];

    
    if ( [[iosClass stuList] count] == 0 ){
    for (int i = 0; i < 10; i++) {
    
        StudentMsg * stu = [[StudentMsg alloc] initWithName:[NSString stringWithFormat:@"jpx%02d",i+1] andNum:i andMathScore:i+40 andPEScore:i+60 andCredit:i+80];
        [iosClass addStudent:stu];
        //[stu printStudent];
        
        
        
        [_nameArray1 addObject:[stu nameStr]];
        [_numArray1 addObject:[NSNumber numberWithInteger:[stu numInt]]];
        [_mathArray1 addObject:[NSNumber numberWithInteger:[stu scoreMathInt]]];
        [_peArray1 addObject:[NSNumber numberWithInteger:[stu scorePEInt]]];
        [_creditArray1 addObject:[NSNumber numberWithInteger:[stu creditInt]]];

    }
        
    }
    
//    //以下为删除
//    //现在位置信息已经得到
//    if ( [_numArray1 isKindOfClass:[NSArray class]] && _numArray1.count > 0 ){
//        //把 _zhiweiInnt 和 _weizhiInt 换成 Array
//        //_locaUint = [_numArray1 indexOfObject:[NSNumber numberWithInteger:_zhiweiInt]];
//        //这里加一个for循环
//        for ( int i = 0; i < [_deleteShowArray count]; i++ ){
//            //还需要加一个值保存_deleteShowArray[i]
//            _saveDeleteIndexInt = [_deleteShowArray[i] integerValue];
//            _locaUint = [_numArray1 indexOfObject:[NSNumber numberWithInteger:_saveDeleteIndexInt]];
//
//                if ( _locaUint != 0 ){
//                [_nameArray1 removeObjectAtIndex:_locaUint];
//                [_numArray1 removeObjectAtIndex:_locaUint];
//                [_mathArray1 removeObjectAtIndex:_locaUint];
//                [_peArray1 removeObjectAtIndex:_locaUint];
//                [_creditArray1 removeObjectAtIndex:_locaUint];
//                }
//
//
//        }
//    }
   // 删除数组中的信息
    //还需要创建一个数组 记录在一次的运行 执行多次删除操作时 键盘键入的用户所要删除的学号数量 记录这些数量
    //然后利用for循环 把这些数量所在的index 依次从5个数组中删除。
    
   // 以上为删除
    
    //NSLog(@"从前的  _numArray1 = %@",_nameArray1);
    //以下为添加
    NSLog(@"_mathInt = %li",_mathInt);
    
    //如果改成数组 这里也要变了
    
    //这里刚才变了下
    
    
    //这里有BUG 有0 的话也会进去 并显示信息在展示界面
    if ( [_XMathArray count] != 0  ){
        //试试用数组给数组的方式 看来这种是可以的 但是格式不对
        //终于好了 这个格式就对了！！！
        [_mathArray1 addObjectsFromArray:_XMathArray];
        [_numArray1 addObjectsFromArray:_XNumArray];
        [_nameArray1 addObjectsFromArray:_XNameArray];
        [_peArray1 addObjectsFromArray:_XPEArray];
        [_creditArray1 addObjectsFromArray:_XCredArray];
        
            //可变数组中添加不可变数组 格式问题
            [_nameArray1 addObjectsFromArray:_XNameArray];
        
    }
    //以上为添加
    
    
    
    
//    //以下为删除
//    //现在位置信息已经得到
//    if ( [_numArray1 isKindOfClass:[NSArray class]] && _numArray1.count > 0 ){
//        //把 _zhiweiInnt 和 _weizhiInt 换成 Array
//        //_locaUint = [_numArray1 indexOfObject:[NSNumber numberWithInteger:_zhiweiInt]];
//        //这里加一个for循环
//        for ( int i = 0; i < [_deleteShowArray count]; i++ ){
//            //还需要加一个值保存_deleteShowArray[i]
//            _saveDeleteIndexInt = [_deleteShowArray[i] integerValue];
//            _locaUint = [_numArray1 indexOfObject:[NSNumber numberWithInteger:_saveDeleteIndexInt]];
//
//            if ( _locaUint != 0 ){
//                [_nameArray1 removeObjectAtIndex:_locaUint];
//                [_numArray1 removeObjectAtIndex:_locaUint];
//                [_mathArray1 removeObjectAtIndex:_locaUint];
//                [_peArray1 removeObjectAtIndex:_locaUint];
//                [_creditArray1 removeObjectAtIndex:_locaUint];
//            }
//
//
//        }
//    }
//    //以上为删除
    
    //修改的话 学号不可修改 其他都可以修改 所以与删除不沾 应该在删除的下面 如果先执行删除了再修改就找不到这个人了嘛 放下面 放下面
    //以下为修改
    if ( [_CPEArray isKindOfClass:[NSArray class]] && _CPEArray.count > 0  ){
        
        //先要找到位置 随便根据成绩 或者学分找
        for (int i = 0; i < [_CPEArray count]; i++) {
            if (  [_CPEArray[i] integerValue] != 0 ){
            //这是 先找到体育成绩 再在展示界面的体育数组中找到该体育成绩所在的位置
            //所以还需要传入一个位置！！！ 少传了一个
            //找学号所在位置！！！ 先找到学号
            _findNumInt = [_CLocationArray[i] integerValue];
            //再找到学号所在位置
            _reciveLoactionInt = [_numArray1 indexOfObject:[NSNumber numberWithInteger:_findNumInt]];
            NSLog(@"_reciveLoactionInt = %li",_reciveLoactionInt);
            
            //接收修改后的体育成绩
            _recivePEInt = [_CPEArray[i] integerValue];
            
            //接收修改后的数组成绩
            _reciveMathInt = [_CMathArray[i] integerValue];
            
            //接收学分
            _reciveCreditInt = [_CCreditArray[i] integerValue];
            
            //修改体育数组中 指定位置_reciveLoactionInt 的体育成绩
            [_peArray1 replaceObjectAtIndex:_reciveLoactionInt withObject:[NSNumber numberWithInteger:_recivePEInt]];
            //修改数学数组中 指定位置_reciveLoactionInt 的数学成绩
            [_mathArray1 replaceObjectAtIndex:_reciveLoactionInt withObject:[NSNumber numberWithInteger:_reciveMathInt]];
            
            //修改学分数组中 指定位置_reciveLoactionInt 的学分
            [_creditArray1 replaceObjectAtIndex:_reciveLoactionInt withObject:[NSNumber numberWithInteger:_reciveCreditInt]];
        }
        }
    }
    //以上为修改
    
    
    
    //以下为删除
    //现在位置信息已经得到
    if ( [_numArray1 isKindOfClass:[NSArray class]] && _numArray1.count > 0 ){
        //把 _zhiweiInnt 和 _weizhiInt 换成 Array
        //_locaUint = [_numArray1 indexOfObject:[NSNumber numberWithInteger:_zhiweiInt]];
        //这里加一个for循环
        for ( int i = 0; i < [_deleteShowArray count]; i++ ){
            //还需要加一个值保存_deleteShowArray[i]
            _saveDeleteIndexInt = [_deleteShowArray[i] integerValue];
            _locaUint = [_numArray1 indexOfObject:[NSNumber numberWithInteger:_saveDeleteIndexInt]];
            
            if ( _locaUint != 0 ){
                [_nameArray1 removeObjectAtIndex:_locaUint];
                [_numArray1 removeObjectAtIndex:_locaUint];
                [_mathArray1 removeObjectAtIndex:_locaUint];
                [_peArray1 removeObjectAtIndex:_locaUint];
                [_creditArray1 removeObjectAtIndex:_locaUint];
            }
            
            
        }
    }
    //以上为删除
    
    
    //最终算位置 一共几个
    _numInt = [_peArray1 count];
    
    NSLog(@"重新获取后的numInt = %li",_numInt);
    //NSLog(@"之后的  _numArray1 = %@",_nameArray1);
    
    
    //注册申请
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    [_tableView registerClass:[ShowTableViewCell class] forCellReuseIdentifier:@"labelCell"];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    
    [self.view addSubview:_tableView];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell1 = nil;
    ShowTableViewCell * cell2 = nil;
    if ( indexPath.row == 0 ){
        cell1 = [_tableView dequeueReusableCellWithIdentifier:@"cell1"];
        if ( cell1 == nil ){
            cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
            UIButton * button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            button1.frame = CGRectMake(0, 0, 200, 30);
            [button1 setTitle:@"显示完毕,返回主界面" forState:UIControlStateNormal];
            [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [button1 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
            [cell1.contentView addSubview:button1];
        }
        return cell1;
    }
    else{
        cell2 = [_tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
        //cell2.label.text = @"你哈奥";
        cell2.label.text = [NSString stringWithFormat:@"姓名:%@",[_nameArray1 objectAtIndex:indexPath.row-1]];
        
        cell2.label1.text = [NSString stringWithFormat:@"学号:%@",[_numArray1 objectAtIndex:indexPath.row-1]];
        
        cell2.label2.text = [NSString stringWithFormat:@"数学:%@分",[_mathArray1 objectAtIndex:indexPath.row-1]];
        
        cell2.label3.text = [NSString stringWithFormat:@"体育:%@分",[_peArray1 objectAtIndex:indexPath.row-1]];
        
        cell2.label4.text = [NSString stringWithFormat:@"学分:%@分",[_creditArray1 objectAtIndex:indexPath.row-1]];
        
//        cell2.label.text = [_nameArray1 objectAtIndex:indexPath.row-1];
//        cell2.label1.text = [_numArray1 objectAtIndex:indexPath.row-1];
//        cell2.label2.text = [_mathArray1 objectAtIndex:indexPath.row-1];
//        cell2.label3.text = [_peArray1 objectAtIndex:indexPath.row-1];
//        cell2.label4.text = [_creditArray1 objectAtIndex:indexPath.row-1];
        return cell2;
        
    }
    
    //return cell2;
}

//自定义单元格 第一栏一个button 点击返回主界面

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //NSLog(@"实际 = %li",_numInt+1);
    return _numInt+1;
    //return 20;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

- (void)pressButton1:(UIButton *)btn
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)dealloc{
    NSLog(@"ShowAllStuMsgViewController %s",__func__);
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
