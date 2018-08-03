//
//  RecommendViewController.m
//  share
//
//  Created by 萨缪 on 2018/7/31.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "RecommendViewController.h"
#import "VCFiveth.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCFourth.h"
#import "VCThird.h"
#import "RecommendByMySelfTableViewCell.h"
@interface RecommendViewController ()

@end

@implementation RecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    [_tableView registerClass:[RecommendByMySelfTableViewCell class] forCellReuseIdentifier:@"labelCell"];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    
    mainArray = [NSArray arrayWithObjects:@"关于设计反馈的5件事",@"用户设计PK战!",@"字体故事",@"高效解决多风格要求", nil];
    
    detailArray1 = [NSArray arrayWithObjects:@"share小白",@"share小王",@"share小吕",@"share小景", nil];
    
    detailArray2 = [NSArray arrayWithObjects:@"设计文章-原创-理论",@"设计文章-原创-Web/Flash",@"设计文章-经验-设计观点-",@"设计文章-经验-案例分析", nil];
    
    detailArray3 = [NSArray arrayWithObjects:@"16分钟前",@"17分钟前",@"45分钟前",@"4小时前", nil];
    
    btnImageArray1 = [NSArray arrayWithObjects:@"13.png",@"13.png",@"13.png",@"13.png", nil];
    
    btnImageArray2 = [NSArray arrayWithObjects:@"14.png",@"14.png",@"14.png",@"14.png", nil];
    
    btnImageArray3 = [NSArray arrayWithObjects:@"15.png",@"15.png",@"15.png",@"15.png", nil];
    
    imageArray1 = [NSArray arrayWithObjects:@"22,.png",@"23,.png",@"24,.png",@"25,.png", nil];
    
    
    //处理最后一个单元格被分栏控制器遮盖
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RecommendByMySelfTableViewCell * cell1 = nil;
    cell1 = [_tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
    cell1.mainString.text = [mainArray objectAtIndex:indexPath.row];
    
    cell1.detailString1.text = [detailArray1 objectAtIndex:indexPath.row];
    
    cell1.detailString2.text = [detailArray2 objectAtIndex:indexPath.row];
    
    cell1.detailString3.text = [detailArray3 objectAtIndex:indexPath.row];
    
    [cell1.btn1 setImage:[UIImage imageNamed:[btnImageArray1 objectAtIndex:indexPath.row]] forState:UIControlStateNormal];
    [cell1.btn1 setTitle:@" 102" forState:UIControlStateNormal];
    [cell1.btn1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [cell1.btn1 setTitle:@" 103" forState:UIControlStateSelected];
    //[cell1.btn1 setTitle:@"102" forState:UIControlStateNormal];
    
    [cell1.btn2 setImage:[UIImage imageNamed:[btnImageArray2 objectAtIndex:indexPath.row]] forState:UIControlStateNormal];
    [cell1.btn2 setTitle:@" 102" forState:UIControlStateNormal];
    [cell1.btn2 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [cell1.btn2 setTitle:@" 103" forState:UIControlStateSelected];
    
    [cell1.btn3 setImage:[UIImage imageNamed:[btnImageArray3 objectAtIndex:indexPath.row]] forState:UIControlStateNormal];
    [cell1.btn3 setTitle:@" 102" forState:UIControlStateNormal];
    [cell1.btn3 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [cell1.btn3 setTitle:@" 103" forState:UIControlStateSelected];
    
    cell1.image.image = [UIImage imageNamed:[imageArray1 objectAtIndex:indexPath.row]];
    
    return cell1;
}

- (void)buttonPressed:(UIButton *)button
{
    //实现按钮状态的切换
    button.selected = !button.selected;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationItem.title = @"我推荐的";
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
    
    //[self.navigationController popToViewController:vcFiveth animated:NO];
    
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

