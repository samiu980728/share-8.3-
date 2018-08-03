//
//  VCFiveth.m
//  share
//
//  Created by 萨缪 on 2018/7/27.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "VCFiveth.h"
#import "JPXForFivethTableViewCell.h"
#import "upLoadViewController.h"
#import "MyMsgViewController.h"
#import "SetUpViewController.h"
#import "RecommendViewController.h"
@interface VCFiveth ()

@end

@implementation VCFiveth



//- (void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//
//    self.navigationController.navigationBar.translucent = NO;
//    self.navigationItem.title = @"个人信息";
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"2.png"] forBarMetrics:nil];
//
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    [_tableView registerClass:[JPXForFivethTableViewCell class] forCellReuseIdentifier:@"labelCell"];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    mainArray = [NSArray arrayWithObjects:@"share小白", nil];
    
    titleArray = [NSArray arrayWithObjects:@"我上传的",@"我的信息",@"我推荐的",@"院系通知",@"设置",@"退出", nil];
    
    imageArray1 = [NSArray arrayWithObjects:@"29,.png",@"30,.png",@"31,.png",@"32,.png",@"33,.png",@"34,.png", nil];
    
    
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = nil;
    if ( indexPath.section == 1 ){
        cell = [_tableView dequeueReusableCellWithIdentifier:@"cell"];
        if ( !cell ){
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            UIButton * btn = [[UIButton alloc] init];
            btn.frame = CGRectMake(350, 12, 25, 25);
            [btn setImage:[UIImage imageNamed:@"35,.png"] forState:UIControlStateNormal];
            //[btn addTarget:self action:nil forControlEvents:UIControlEventTouchUpInside];
            
            if ( indexPath.row == 0 ){
                //我上传的
                [btn addTarget:self action:@selector(clickMe1:) forControlEvents:UIControlEventTouchUpInside];
            }
            else if ( indexPath.row == 1 ){
                //我的信息
                [btn addTarget:self action:@selector(clickMe2:) forControlEvents:UIControlEventTouchUpInside];
            }
            else if ( indexPath.row == 2 ){
                [btn addTarget:self action:@selector(clickMe4:) forControlEvents:UIControlEventTouchUpInside];
                
            }
            else if ( indexPath.row == 4 ){
                [btn addTarget:self action:@selector(clickMe3:) forControlEvents:UIControlEventTouchUpInside];
            }
            
            
            [cell.contentView addSubview:btn];
            
        }
        cell.textLabel.text = [titleArray objectAtIndex:indexPath.row];
        cell.textLabel.font = [UIFont systemFontOfSize:15];
        
        cell.imageView.image = [UIImage imageNamed:[imageArray1 objectAtIndex:indexPath.row]];
        
        CGSize itemSize5 = CGSizeMake(35, 35);
        
        UIGraphicsBeginImageContext(itemSize5);
        
        CGRect imageRect5 = CGRectMake(0.0, 0.0, itemSize5.width, itemSize5.height);
        
        [cell.imageView.image drawInRect:imageRect5];
        
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext();
        return cell;
        
    }
    else{
        JPXForFivethTableViewCell * cell1 = nil;
        cell1 = [_tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
        UIButton * btn1 = [[UIButton alloc] init];
        
        UIButton * btn2 = [[UIButton alloc] init];
        
        UIButton * btn3 = [[UIButton alloc] init];
        
        
            btn1.frame = CGRectMake(100, 75, 70, 20);
        
            btn2.frame = CGRectMake(190, 75, 70, 20);
        
            btn3.frame = CGRectMake(280, 75, 70, 20);
        
        cell1.mainString.text = @"share小白";
        
        cell1.detailString1.text = @"数媒/设计爱好者";
        
        cell1.detailString2.text = @"开心了就笑,不开心了就过会再笑";
        
        cell1.image.image = [UIImage imageNamed:@"36,.png"];
        
        [btn1 setTitle:@" 22" forState:UIControlStateNormal];
        [btn1 setTitleColor:[UIColor colorWithRed:0.00f green:0.56f blue:0.81f alpha:1.00f] forState:UIControlStateNormal];
        [btn1 setImage:[UIImage imageNamed:@"26,.png"] forState:UIControlStateNormal];
        [btn1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [btn1 setTitle:@" 23" forState:UIControlStateSelected];
        
        [btn2 setTitle:@" 33" forState:UIControlStateNormal];
        [btn2 setImage:[UIImage imageNamed:@"27,.png"] forState:UIControlStateNormal];
        [btn2 setTitleColor:[UIColor colorWithRed:0.00f green:0.56f blue:0.81f alpha:1.00f] forState:UIControlStateNormal];
        [btn2 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [btn2 setTitle:@" 34" forState:UIControlStateSelected];
        
        [btn3 setTitle:@" 44" forState:UIControlStateNormal];
        [btn3 setImage:[UIImage imageNamed:@"28,.png"] forState:UIControlStateNormal];
        [btn3 setTitleColor:[UIColor colorWithRed:0.00f green:0.56f blue:0.81f alpha:1.00f] forState:UIControlStateNormal];
        [btn3 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [btn3 setTitle:@" 45" forState:UIControlStateSelected];
        
        [cell1.contentView addSubview:btn1];
        [cell1.contentView addSubview:btn2];
        [cell1.contentView addSubview:btn3];
        
        return cell1;
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.title = @"个人信息";
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"2.png"] forBarMetrics:nil];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //重新收拾旧山河
    SetUpViewController * a = [SetUpViewController new];
    UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(clickMe3:)];
    a.navigationItem.leftBarButtonItem = item;
    a.navigationItem.backBarButtonItem = item;
    a.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    a.view.backgroundColor = [UIColor whiteColor];
    if ( indexPath.row == 4 && indexPath.section == 1 ){
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:a animated:YES];
        self.hidesBottomBarWhenPushed = NO;
    }
    
    RecommendViewController * b = [RecommendViewController new];
    b.navigationItem.leftBarButtonItem = item;
    b.navigationItem.backBarButtonItem = item;
    b.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    b.view.backgroundColor = [UIColor whiteColor];
    
    if ( indexPath.row == 2 && indexPath.section == 1 ){
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:b animated:YES];
        self.hidesBottomBarWhenPushed = NO;
    }
    
    
    MyMsgViewController * c = [MyMsgViewController new];
    c.navigationItem.leftBarButtonItem = item;
    c.navigationItem.backBarButtonItem = item;
    c.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    c.view.backgroundColor = [UIColor whiteColor];
    if  ( indexPath.row == 1 && indexPath.section == 1 ){
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:c animated:YES];
        self.hidesBottomBarWhenPushed = NO;
    }
    
    upLoadViewController * d = [upLoadViewController new];
    d.navigationItem.leftBarButtonItem = item;
    d.navigationItem.backBarButtonItem = item;
    d.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    d.view.backgroundColor = [UIColor whiteColor];
    if ( indexPath.row == 0 && indexPath.section == 1 ){
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:d animated:YES];
        self.hidesBottomBarWhenPushed = NO;
    }
    
    
}

- (void)clickMe1:(id)sender
{
    upLoadViewController * fu = [[upLoadViewController alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
    
    //[self presentViewController:nav animated:YES completion:nil];
    [self.navigationController pushViewController:fu animated:YES];
    
}

- (void)clickMe2:(id)sender
{
    MyMsgViewController * fu = [[MyMsgViewController alloc] init];
    
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

- (void)clickMe4:(id)sender
{
    RecommendViewController * fu = [[RecommendViewController alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
    
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)buttonPressed:(UIButton *)button
{
    //实现按钮状态的切换
    button.selected = !button.selected;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray * array = [NSArray arrayWithObjects:@1,@6, nil];
    return [[array objectAtIndex:section] integerValue];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ( indexPath.section == 0 ){
        return 100;
    }
    return 50;
}

//调整图片
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
