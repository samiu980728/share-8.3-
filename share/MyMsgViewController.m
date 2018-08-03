//
//  MyMsgViewController.m
//  share
//
//  Created by 萨缪 on 2018/7/31.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "MyMsgViewController.h"
#import "VCFiveth.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCFourth.h"
#import "VCThird.h"
#import "ForMyMsgTableViewCell.h"
#import "NewWatchViewController.h"
#import "PersonalMessageViewController.h"
#import "SetUpViewController.h"

@interface MyMsgViewController ()

@end

@implementation MyMsgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.view.backgroundColor = [UIColor whiteColor];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    //[_tableView registerClass:[ForMyMsgTableViewCell class] forCellReuseIdentifier:@"labelCell"];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    mainString = [NSArray arrayWithObjects:@"评论",@"推荐我的",@"新关注的",@"私信",@"活动通知", nil];
    
    rightString = [NSArray arrayWithObjects:@"7",@"9",@"5",@"4",@"1", nil];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return mainString.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSLog(@"time");
//    NSLog(@"=====%ld",indexPath.row);
//    ForMyMsgTableViewCell * cell1 = nil;
//    cell1 = [_tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
//
//    cell1.textLabel.text = [mainString objectAtIndex:indexPath.row];
//
//    [cell1.btn setImage:[UIImage imageNamed:@"35,.png"] forState:UIControlStateNormal];
//
//    一个总是在错的问题，给label赋值text 经常忘加text!!!!
//    一个总是在错的问题，给label赋值text 经常忘加text!!!!
//    一个总是在错的问题，给label赋值text 经常忘加text!!!!
//    一个总是在错的问题，给label赋值text 经常忘加text!!!!
//    一个总是在错的问题，给label赋值text 经常忘加text!!!!
//    一个总是在错的问题，给label赋值text 经常忘加text!!!!
//    一个总是在错的问题，给label赋值text 经常忘加text!!!!
//    一个总是在错的问题，给label赋值text 经常忘加text!!!!
//    一个总是在错的问题，给label赋值text 经常忘加text!!!!
    //    一个总是在错的问题，给label赋值text 经常忘加text!!!!
    //    一个总是在错的问题，给label赋值text 经常忘加text!!!!
    //    一个总是在错的问题，给label赋值text 经常忘加text!!!!
    //    一个总是在错的问题，给label赋值text 经常忘加text!!!!
    //    一个总是在错的问题，给label赋值text 经常忘加text!!!!
    //    一个总是在错的问题，给label赋值text 经常忘加text!!!!
    //    一个总是在错的问题，给label赋值text 经常忘加text!!!!
    //    一个总是在错的问题，给label赋值text 经常忘加text!!!!
    //    一个总是在错的问题，给label赋值text 经常忘加text!!!!
    //cell1.rightString.text = [rightString objectAtIndex:indexPath.row];
    
    
    UITableViewCell * cell = nil;
//    if ( indexPath.section == 1 ){
        cell = [_tableView dequeueReusableCellWithIdentifier:@"cell"];
        if ( !cell ){
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            UIButton * btn = [[UIButton alloc] init];
            btn.frame = CGRectMake(350, 12, 25, 25);
            [btn setImage:[UIImage imageNamed:@"35,.png"] forState:UIControlStateNormal];
            //[btn addTarget:self action:nil forControlEvents:UIControlEventTouchUpInside];
            if ( indexPath.row == 2 ){
                [btn addTarget:self action:@selector(clickMe1:) forControlEvents:UIControlEventTouchUpInside];
            }
            else if ( indexPath.row == 3 ){
                [btn addTarget:self action:@selector(clickMe2:) forControlEvents:UIControlEventTouchUpInside];
            }
            

//
           [cell.contentView addSubview:btn];
//
        }
        cell.textLabel.text = [mainString objectAtIndex:indexPath.row];
        cell.textLabel.font = [UIFont systemFontOfSize:15];
//
//        cell.imageView.image = [UIImage imageNamed:[imageArray1 objectAtIndex:indexPath.row]];
//
//        CGSize itemSize5 = CGSizeMake(35, 35);
//
//        UIGraphicsBeginImageContext(itemSize5);
//
//        CGRect imageRect5 = CGRectMake(0.0, 0.0, itemSize5.width, itemSize5.height);
//
//        [cell.imageView.image drawInRect:imageRect5];
//
//        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
//
//        UIGraphicsEndImageContext();
//        return cell;
//
//    }
    
    
    return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    PersonalMessageViewController * a = [PersonalMessageViewController new];
    UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(clickMe3:)];
    
    a.navigationItem.leftBarButtonItem = item;
    a.navigationItem.backBarButtonItem = item;
    a.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    a.view.backgroundColor = [UIColor whiteColor];
    if (indexPath.row == 3 && indexPath.section == 0) {
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:a animated:YES];
        self.hidesBottomBarWhenPushed = NO;
    }
    
    NewWatchViewController * b = [NewWatchViewController new];
    b.navigationItem.leftBarButtonItem = item;
    b.navigationItem.backBarButtonItem = item;
    b.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    b.view.backgroundColor = [UIColor whiteColor];
    if (indexPath.row == 2 && indexPath.section == 0) {
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:b animated:YES];
        self.hidesBottomBarWhenPushed = NO;
    }
}

- (void)clickMe1:(id)sender
{
    NewWatchViewController * fu = [[NewWatchViewController alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
    
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)clickMe2:(id)sender
{
    PersonalMessageViewController * fu = [[PersonalMessageViewController alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
    
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)clickMe3:(id)sender
{
//    SetUpViewController * fu = [[SetUpViewController alloc] init];
//
//    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
//
//    [self presentViewController:nav animated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
}

//- (void)buttonPressed:(UIButton *)button
//{
//    //实现按钮状态的切换
//    button.selected = !button.selected;
//}






- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;

    self.navigationItem.title = @"我的信息";
    [self.navigationController.navigationBar setBackgroundImage: [UIImage imageNamed:@"2.png"] forBarMetrics:nil];

    self.view.backgroundColor = [UIColor whiteColor];

//    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"177" ofType:@"png"];
//
//    NSData * data1 = [NSData dataWithContentsOfFile:filePath1];
//
//    //暂时把action设置为nil 等会还要上传照片
//    UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:data1] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:@selector(clickMe:)];
//
//    self.navigationItem.leftBarButtonItem = item1;

}



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

    [self presentViewController:tabController animated:YES completion:nil];

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
    
    
