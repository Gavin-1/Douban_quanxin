//
//  UserInfoViewController.m
//  Douban
//
//  Created by YANG on 16/5/5.
//  Copyright © 2016年 唐家文. All rights reserved.
//hh

#import "UserInfoViewController.h"

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
    // Do any additional setup after loading the view.
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
