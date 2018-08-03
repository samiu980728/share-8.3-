//
//  RegisterViewController.m
//  share
//
//  Created by 萨缪 on 2018/8/3.
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
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"2.png"]];
    
    UIImageView * image = [[UIImageView alloc] init];
    image.image = [UIImage imageNamed:@"53,.png"];
    image.frame = CGRectMake(100, 100, 200, 200);
    //image.backgroundColor = [UIColor blueColor];
    [self.view addSubview:image];
    
    //用户名提示标签创建
    _lbUserName = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3.png"]];
    _lbUserName.frame = CGRectMake(90, 320, 40, 40);
    _lbUserName.backgroundColor = [UIColor whiteColor];
    
    //    _lbUserName.text = @"用户名";
    //    _lbUserName.font = [UIFont systemFontOfSize:20];
    //    _lbUserName.textAlignment = NSTextAlignmentLeft;//居左
    //
    //用户密码提示创建
    _lbPassWord = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"4.png"]];
    _lbPassWord.frame = CGRectMake(90, 360, 40, 40);
    _lbPassWord.backgroundColor = [UIColor whiteColor];
    //    _lbPassWord.text = @"密码:";
    //    _lbPassWord.font = [UIFont systemFontOfSize:20];
    //    _lbPassWord.textAlignment = NSTextAlignmentLeft;
    
    //用户名输入框
    
    _tfUserName = [[UITextField alloc]init];
    
    _tfUserName.backgroundColor = [UIColor whiteColor];
    _tfUserName.frame = CGRectMake(130, 320, 180, 40);
    _tfUserName.placeholder = @"请输入可注册用户名";
    _tfUserName.borderStyle = UITextBorderStyleLine;
    
    //密码输入框
    _tfPassWord = [[UITextField alloc]init];
    _tfPassWord.frame = CGRectMake(130, 360, 180, 40);
    _tfPassWord.placeholder = @"请输入可注册密码";
    _tfPassWord.borderStyle = UITextBorderStyleLine;
    _tfPassWord.backgroundColor = [UIColor whiteColor];
    
    
    //密码保密 密文输入
    _tfPassWord.secureTextEntry = YES;
    
    //登录和注册按钮btn的创建
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(70, 420, 270, 80);
    [_btLogin setTitle:@"注册成功,返回登录界面" forState:UIControlStateNormal];
    _btLogin.titleLabel.font = [UIFont systemFontOfSize:20];
    _btLogin.tintColor = [UIColor whiteColor];
    //设置边框
    [_btLogin.layer setMasksToBounds:YES];
    //设置圆角半径
    [_btLogin.layer setCornerRadius:5.0];
    
    //设置边框宽度
    [_btLogin.layer setBorderWidth:1.0];
    _btLogin.layer.borderColor = [UIColor whiteColor].CGColor;
    
    [_btLogin addTarget:self action:@selector(clickMe11:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassWord];
    [self.view addSubview:_tfPassWord];
    [self.view addSubview:_tfUserName];
    //[self.view addSubview:_btRegister];
    [self.view addSubview:_btLogin];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
    
    
    
    //设置监听
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillChange:) name:UIKeyboardWillChangeFrameNotification object:nil];
}

- (void)clickMe11:(id)sender
{
    ViewController * a = [[ViewController alloc] init];
    [self presentViewController:a animated:YES completion:nil];
}


//键盘上移

- (void)keyboardWillChange:(NSNotification *)note
{
    NSDictionary *userInfo = note.userInfo;
    CGFloat duration = [userInfo[@"UIKeyboardAnimationDurationUserInfoKey"] doubleValue];
    
    CGRect keyFrame = [userInfo[@"UIKeyboardFrameEndUserInfoKey"] CGRectValue];
    CGFloat moveY = keyFrame.origin.y - self.view.frame.size.height;//这个64是我减去的navigationbar加上状态栏20的高度,可以看自己的实际情况决定是否减去;
    
    [UIView animateWithDuration:duration animations:^{
        self.view.transform = CGAffineTransformMakeTranslation(0, moveY);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

//以上为键盘上移


- (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize
{
    UIGraphicsBeginImageContext(CGSizeMake(reSize.width, reSize.height));
    [image drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage *reSizeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [reSizeImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
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
