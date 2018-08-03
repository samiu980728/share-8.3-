//
//  ViewController.h
//  share
//
//  Created by 萨缪 on 2018/7/27.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIApplicationDelegate>
{
    //登录界面的组成：
    //用户名提示（用label)：输入框（UITextField)
    //密码提示（用label)：密码输入框(UITextField)
    //登录按钮
    //注册按钮 这两个用UIButton
    
    //用户名提示label
    UIImageView * _lbUserName;
    //密码提示label
    UIImageView * _lbPassWord;
    
    //用户名输入框
    UITextField * _tfUserName;
    
    //密码输入框
    UITextField * _tfPassWord;
    
    //登录按钮
    UIButton * _btLogin;
    
    //注册按钮
    UIButton * _btRegister;
    
    
}

@end

