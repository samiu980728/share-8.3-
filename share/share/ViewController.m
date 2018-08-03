//
//  ViewController.m
//  share
//
//  Created by 萨缪 on 2018/7/27.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "ViewController.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "AppDelegate.h"
#import "VCThird.h"
#import "VCFourth.h"
#import "VCFiveth.h"
#import "RegisterViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
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
    _tfUserName.placeholder = @"请输入用户名";
    _tfUserName.borderStyle = UITextBorderStyleLine;
    
    //密码输入框
    _tfPassWord = [[UITextField alloc]init];
    _tfPassWord.frame = CGRectMake(130, 360, 180, 40);
    _tfPassWord.placeholder = @"请输入密码";
    _tfPassWord.borderStyle = UITextBorderStyleLine;
    _tfPassWord.backgroundColor = [UIColor whiteColor];

    //密码保密 密文输入
    _tfPassWord.secureTextEntry = YES;
    
    //登录和注册按钮btn的创建
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(100, 420, 80, 40);
    [_btLogin setTitle:@"登录" forState:UIControlStateNormal];
    _btLogin.titleLabel.font = [UIFont systemFontOfSize:20];
    _btLogin.tintColor = [UIColor whiteColor];
    //设置边框
    [_btLogin.layer setMasksToBounds:YES];
    //设置圆角半径
    [_btLogin.layer setCornerRadius:5.0];
    
    //设置边框宽度
    [_btLogin.layer setBorderWidth:1.0];
    _btLogin.layer.borderColor = [UIColor whiteColor].CGColor;
    
    [_btLogin addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
    
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame = CGRectMake(230, 420, 80, 40);
    [_btRegister setTitle:@"注册" forState:UIControlStateNormal];
    _btRegister.titleLabel.font = [UIFont systemFontOfSize:20];
    _btRegister.tintColor = [UIColor whiteColor];
    
    [_btRegister addTarget:self action:@selector(clickMe11:) forControlEvents:UIControlEventTouchUpInside];
    
    
    //设置边框
    [_btRegister.layer setMasksToBounds:YES];
    //设置圆角半径
    [_btRegister.layer setCornerRadius:5.0];
    
    //设置边框宽度
    [_btRegister.layer setBorderWidth:1.0];
    _btRegister.layer.borderColor = [UIColor whiteColor].CGColor;
    
    //[_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    //将所有空间添加到视图中显示
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassWord];
    [self.view addSubview:_tfPassWord];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_btRegister];
    [self.view addSubview:_btLogin];
    
    
    
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
    
    
    
    //设置监听
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillChange:) name:UIKeyboardWillChangeFrameNotification object:nil];
    
    
}


//- (void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    self.navigationController.navigationBar.translucent = NO;
//
//    self.navigationItem.title = @" 1213 ";
//    [self.navigationController.navigationBar setBackgroundImage: [UIImage imageNamed:@"2.png"] forBarMetrics:nil];
//
//    //self.view.backgroundColor = [UIColor whiteColor];
//
//    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"177" ofType:@"png"];
//
//    NSData * data1 = [NSData dataWithContentsOfFile:filePath1];
//
//    //暂时把action设置为nil 等会还要上传照片
//    UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:data1] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:@selector(clickMe11:)];
//    //UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(clickMe:)];
//
//    self.navigationItem.leftBarButtonItem = item1;
//
//}


- (void)clickMe11:(id)sender
{
    RegisterViewController * a = [[RegisterViewController alloc] init];
    [self presentViewController:a animated:YES completion:nil];
}


- (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize
{
    UIGraphicsBeginImageContext(CGSizeMake(reSize.width, reSize.height));
    [image drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage *reSizeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [reSizeImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
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

//以上为键盘上移


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)clickMe:(id)sender{
    VCFirst * vcFirst = [[VCFirst alloc] init];
    
   
    //vcFirst.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@"5.png"] tag:101];
    //vcFirst.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"第一" image:nil tag:101];
    vcFirst.tabBarItem.image = [[UIImage imageNamed:@"5.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    
    VCSecond * vcSecond = [[VCSecond alloc] init];
    
    
    VCThird * vcThird = [[VCThird alloc] init];
    
    vcSecond.tabBarItem.image = [[UIImage imageNamed:@"6.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    vcThird.tabBarItem.image = [[UIImage imageNamed:@"7.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    VCFourth * vcFourth = [[VCFourth alloc] init];
    
    vcFourth.tabBarItem.image = [[UIImage imageNamed:@"8.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    VCFiveth * vcFiveth = [[VCFiveth alloc] init];
    
    vcFiveth.tabBarItem.image = [[UIImage imageNamed:@"9.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarController * tabController = [[UITabBarController alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:vcFirst];
    
    UINavigationController * nav1 = [[UINavigationController alloc] initWithRootViewController:vcSecond];
    
    UINavigationController * nav2 = [[UINavigationController alloc] initWithRootViewController:vcThird];
    
    UINavigationController * nav3 = [[UINavigationController alloc] initWithRootViewController:vcFourth];
    
    UINavigationController * nav4 = [[UINavigationController alloc] initWithRootViewController:vcFiveth];
    
    NSArray * arrayVC = [NSArray arrayWithObjects:nav,nav1,nav2,nav3,nav4, nil];
    
    tabController.viewControllers = arrayVC;
    
    //[appDelagete.window.rootViewController presentViewController:[[VCFirst alloc]init] animated:YES completion:nil];
    
    [self presentViewController:tabController animated:YES completion:nil];
    
}

//登录事件函数
- (void)pressLogin
{
    NSString * strName = @"Michael";
    NSString * strPass = @"123456";
    
    //获取输入框中的用户名文字 和 密码文字
    NSString * strTextName = _tfUserName.text;
    NSString* strTextPass = _tfPassWord.text;
    
    if ( [strName isEqualToString:strTextName] && [strPass isEqualToString:strTextPass] ){
        NSLog(@"用户名和密码均正确");
        
        UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"提示" message:@"登录成功" preferredStyle:UIAlertControllerStyleActionSheet];
        
        [self presentViewController:actionSheet animated:YES completion:nil];
    }else{
        NSLog(@"验证失败");
        
        UIAlertController *actionSheet1 = [UIAlertController alertControllerWithTitle:@"提示" message:@"验证失败 用户名或密码错误" preferredStyle:UIAlertControllerStyleActionSheet];
        
        UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"点击了按钮1，进入按钮1的事件");
        }];
        UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"点击了取消");
        }];
        
        [actionSheet1 addAction:action1];
        [actionSheet1 addAction:action2];
        
        //[self presentViewController:actionSheet1 animated:YES completion:nil];
    }
}

//注册事件函数
- (void)pressRegister
{
    
}

////点击任意地方 收回键盘
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    //回收键盘
//    [_tfUserName resignFirstResponder];
//    [_tfPassWord resignFirstResponder];
//
//}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

