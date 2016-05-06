//
//  LoginViewController.h
//  Douban
//
//  Created by YANG on 16/5/5.
//  Copyright © 2016年 唐家文. All rights reserved.
//唐

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *captchaImageView;
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *captcha;
- (IBAction)submitButtonTapped:(UIButton *)sender;
- (IBAction)cancelButtonTapped:(UIButton *)sender;
- (IBAction)backgroundTap:(id)sender;

@end
