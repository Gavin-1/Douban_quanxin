//
//  NetworkManager.h
//  Douban
//
//  Created by lk on 16/5/4.
//  Copyright © 2016年 唐家文. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtocolClass.h"

@interface NetworkManager : NSObject

@property (weak, nonatomic)id<DoubanDelegate>delegate;
@property (nonatomic) NSMutableString *captchaID;

+ (instancetype)sharedInstancd;

-(instancetype)init;

-(void)setChannel:(NSUInteger)channelIndex withURLWithString:(NSString *)urlWithString;

-(void)LoginwithUsername:(NSString *)username
                Password:(NSString *)password
                 Captcha:(NSString *)captcha
         RememberOnorOff:(NSString *)rememberOnorOff;

-(void)logout;

-(void)loadCaptchaImage;

-(void)loadPlaylistwithType:(NSString *)type;
@end

