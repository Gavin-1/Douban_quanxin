//
//  UserInfoViewController.m
//  Douban
//
//  Created by YANG on 16/5/5.
//  Copyright © 2016年 唐家文. All rights reserved.
//hh

#import "UserInfoViewController.h"
#include "CDSideBarController.h"

@interface UserInfoViewController ()
{
    NetworkManager* networkManager;//定义一个网络管理者
    UIStoryboard* mainStorboard;
    AppDelegate* appDelegate;
}

@end

@implementation UserInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    mainStorboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //访问AppDelegate
    appDelegate=[[UIApplication sharedApplication]delegate];
    //给登陆图片添加手势
    UITapGestureRecognizer *singleTap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(loainImageTapped)];
    [singleTap setNumberOfTapsRequired:1];//singleTap有一次点击就会响应
    self.loainImage.userInteractionEnabled=YES;//允许交互
    [self.loainImage addGestureRecognizer:singleTap];//loainImage添加手势动作
    
    networkManager=[[NetworkManager alloc]init];
    networkManager.delegate=(id)self;//系统本身的协议
    
     
    
    
}
//界面即将出现
-(void)viewWillAppear:(BOOL)animated
{
    [self viewWillAppear:animated];
    //界面即将出现时，调用setUserInfo，将用户信息显示出来
    [self setUserInfo];
    
}

-(void)viewDidLayoutSubviews
{
    //即将布局子视图
    [super viewWillLayoutSubviews];
    //圆角化
    _loainImage.layer.cornerRadius=_loainImage.frame.size.width/2.0;
    if (!_loainImage.clipsToBounds) {
        _loainImage.clipsToBounds=YES;//省略视图的范围
    }
}
//登录图片的响应方法
-(void)loainImageTapped
{
    //通过故事面板找到对应的信息
    LoginViewController* loginVC=[mainStorboard instantiateViewControllerWithIdentifier:@"loginVC"];
    
    
    
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

- (IBAction)logoutButtonTapped:(UIButton *)sender {
}
@end
