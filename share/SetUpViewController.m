//
//  SetUpViewController.m
//  share
//
//  Created by 萨缪 on 2018/7/31.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "SetUpViewController.h"
#import "VCFiveth.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCFourth.h"
#import "VCThird.h"
#import "DataViewController.h"
#import "ChangePassWordViewController.h"
#import "NewsSetUpViewController.h"

@interface SetUpViewController ()

@end

@implementation SetUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    stringArray = [NSArray arrayWithObjects:@"基本资料",@"修改密码",@"消息设置",@"关于SHARE",@"清除缓存", nil];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell1 = nil;
    cell1 = [_tableView dequeueReusableCellWithIdentifier:@"cell1"];
    if (cell1 == nil){
        cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
        
        cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        UIButton * btn = [[UIButton alloc] init];
        btn.frame = CGRectMake(350, 12, 25, 25);
        [btn setImage:[UIImage imageNamed:@"35,.png"] forState:UIControlStateNormal];
        
        if ( indexPath.row == 0 ){
            [btn addTarget:self action:@selector(clickMe1:) forControlEvents:UIControlEventTouchUpInside];
        }
        else if ( indexPath.row == 1 ){
            [btn addTarget:self action:@selector(clickMe2:) forControlEvents:UIControlEventTouchUpInside];
        }
        else if ( indexPath.row == 2 ){
            [btn addTarget:self action:@selector(clickMe3:) forControlEvents:UIControlEventTouchUpInside];
        }
        else if ( indexPath.row == 4 ){
            [btn addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        }
        
        [cell1.contentView addSubview:btn];
        
    }
    cell1.textLabel.text = [stringArray objectAtIndex:indexPath.row];
    
    return cell1;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NewsSetUpViewController * a = [NewsSetUpViewController new];
    UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(clickMe3:)];
    
    a.navigationItem.leftBarButtonItem = item;
    a.navigationItem.backBarButtonItem = item;
    a.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    a.view.backgroundColor = [UIColor whiteColor];
    if ( indexPath.section == 0 && indexPath.row == 2 ){
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:a animated:YES];
        self.hidesBottomBarWhenPushed = NO;
    }
    
    ChangePassWordViewController * b = [ChangePassWordViewController new];
    b.navigationItem.leftBarButtonItem = item;
    b.navigationItem.backBarButtonItem = item;
    b.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    b.view.backgroundColor = [UIColor whiteColor];
    if ( indexPath.row == 1 && indexPath.section == 0 ){
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:b animated:YES];
        self.hidesBottomBarWhenPushed = NO;
    }
    
    DataViewController * c = [DataViewController new];
    c.navigationItem.leftBarButtonItem = item;
    c.navigationItem.backBarButtonItem = item;
    c.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    c.view.backgroundColor = [UIColor whiteColor];
    if ( indexPath.row == 0 && indexPath.section == 0 ){
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:c animated:YES];
        self.hidesBottomBarWhenPushed = NO;
    }
    
}

- (void)clickMe1:(id)sender
{
    DataViewController * fu = [[DataViewController alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
    
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)clickMe2:(id)sender
{
    ChangePassWordViewController * fu = [[ChangePassWordViewController alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
    
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)clickMe3:(id)sender
{
//    NewsSetUpViewController * fu = [[NewsSetUpViewController alloc] init];
//
//    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
//
//    [self presentViewController:nav animated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)buttonPressed:(UIButton *)button
{
    //实现按钮状态的切换
    button.selected = !button.selected;
    if ( button.selected ){
        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"确认清楚缓存" message:@"想好" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"点击了按钮1，进入按钮1的事件");
            //textFields是一个数组，获取所输入的字符串
            NSLog(@"%@",alert.textFields.lastObject.text);
        }];
        UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"点击了取消");
        }];
        
        [alert addAction:action1];
        [alert addAction:action2];
        
        
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    //新加的
    //VCFiveth * five = [[VCFiveth alloc] init];
    self.navigationController.navigationBar.translucent = NO;

    self.navigationItem.title = @"设置";
    [self.navigationController.navigationBar setBackgroundImage: [UIImage imageNamed:@"2.png"] forBarMetrics:nil];

    self.view.backgroundColor = [UIColor whiteColor];

//    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"177" ofType:@"png"];
//
//    NSData * data1 = [NSData dataWithContentsOfFile:filePath1];
//
//    //暂时把action设置为nil 等会还要上传照片
//    UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithData:data1]  style:UIBarButtonItemStyleDone target:self action:@selector(clickMe:)];

    //five.navigationItem.leftBarButtonItem = item1;

    //self.navigationController.navigationBar.translucent = NO;

//    self.navigationItem.title = @"设置";
//    [self.navigationController.navigationBar setBackgroundImage: [UIImage imageNamed:@"2.png"] forBarMetrics:nil];
//
//    self.view.backgroundColor = [UIColor whiteColor];
//
//    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"177" ofType:@"png"];
//
//    NSData * data1 = [NSData dataWithContentsOfFile:filePath1];
//
//    //暂时把action设置为nil 等会还要上传照片
//    UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:data1] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:@selector(clickMe:)];
//
//    self.navigationItem.leftBarButtonItem = item1;

}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    DataViewController * a = [DataViewController new];
//    UIBarButtonItem * item = [UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(clme)
//
//}

- (void)clickMe:(id)sender
{
    
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
    
    //[self presentViewController:tabController animated:YES completion:nil];
    [self.navigationController popToViewController:vcFiveth animated:YES];
    
}


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
