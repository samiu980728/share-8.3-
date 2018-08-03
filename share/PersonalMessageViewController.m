//
//  PersonalMessageViewController.m
//  share
//
//  Created by 萨缪 on 2018/7/31.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "PersonalMessageViewController.h"
#import "MyMsgViewController.h"
#import "OneMessageViewController.h"
#import "TwoMessageViewController.h"
#import "ThreeMessageViewController.h"
@interface PersonalMessageViewController ()

@end

@implementation PersonalMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    imageArray = [NSArray arrayWithObjects:@"39,.png",@"40,.png",@"41,.png",@"42,.png", nil];
    
    mainStringArray = [NSArray arrayWithObjects:@"share小格",@"share小兰",@"share小明",@"share小雪", nil];
    
    detailStringArray = [NSArray arrayWithObjects:@"你的作品我很喜欢!",@"谢谢，已关注你",@"为你点赞!",@"你好可以问问你怎么拍的吗?", nil];
    
    timeArray = [NSArray arrayWithObjects:@"16-07 09:45",@"16-08 10:00",@"16-09 10:23",@"16-10 11:20", nil];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell1 = nil;
    
    cell1 = [_tableView dequeueReusableCellWithIdentifier:@"cell1"];
    if ( cell1 == nil ){
        cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
    }
    UILabel * label1 = [[UILabel alloc] init];
    label1.frame = CGRectMake(66, 20, 130, 20);
    label1.text = [mainStringArray objectAtIndex:indexPath.row];
    label1.font = [UIFont systemFontOfSize:15];
    
    UILabel * label2 = [[UILabel alloc] init];
    label2.frame = CGRectMake(66, 40, 200, 20);
    label2.text = [detailStringArray objectAtIndex:indexPath.row];
    label2.font = [UIFont systemFontOfSize:13];
    
    UILabel * label3 = [[UILabel alloc] init];
    label3.frame = CGRectMake(270, 20, 130, 15);
    label3.font = [UIFont systemFontOfSize:12];
    label3.textColor = [UIColor grayColor];
    label3.text = [timeArray objectAtIndex:indexPath.row];
    
    [cell1.contentView addSubview:label1];
    
    [cell1.contentView addSubview:label2];
    
    [cell1.contentView addSubview:label3];
    //cell1.textLabel.text = [mainStringArray objectAtIndex:indexPath.row];
    
    //cell1.detailTextLabel.text = [detailStringArray objectAtIndex:indexPath.row];
    
    cell1.imageView.image = [UIImage imageNamed:[imageArray objectAtIndex:indexPath.row]];
    
    CGSize itemSize13 = CGSizeMake(35, 35);
    
    UIGraphicsBeginImageContext(itemSize13);
    
    CGRect imageRect13 = CGRectMake(0.0, 0.0, itemSize13.width, itemSize13.height);
    
    [cell1.imageView.image drawInRect:imageRect13];
    
    cell1.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    
    return cell1;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    OneMessageViewController * a = [OneMessageViewController new];
    UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(click:)];
    
    a.navigationItem.backBarButtonItem = item;
    a.navigationItem.leftBarButtonItem = item;
    a.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    if ( indexPath.section == 0 && indexPath.row == 0 ){
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:a animated:YES];
        self.hidesBottomBarWhenPushed = NO;
    }
    
    TwoMessageViewController * b = [TwoMessageViewController new];
    b.navigationItem.backBarButtonItem = item;
    b.navigationItem.leftBarButtonItem = item;
    b.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    if ( indexPath.section == 0 && indexPath.row == 1 ){
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:b animated:YES];
        self.hidesBottomBarWhenPushed = NO;
    }
    
    ThreeMessageViewController * c = [ThreeMessageViewController new];
    c.navigationItem.backBarButtonItem = item;
    c.navigationItem.leftBarButtonItem = item;
    c.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    if ( indexPath.section == 0 && indexPath.row == 2 ){
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:c animated:YES];
        self.hidesBottomBarWhenPushed = NO;
    }
}

- (void)click:(UINavigationController *)a
{
    [self.navigationController popViewControllerAnimated:YES];
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
    return 4;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationItem.title = @"私信";
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
    MyMsgViewController * fu = [[MyMsgViewController alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
    
    [self presentViewController:nav animated:YES completion:nil];
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
