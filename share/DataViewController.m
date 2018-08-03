//
//  DataViewController.m
//  share
//
//  Created by 萨缪 on 2018/7/31.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "DataViewController.h"
#import "SetUpViewController.h"
@interface DataViewController ()

@end

@implementation DataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = nil;
    cell = [_tableView dequeueReusableCellWithIdentifier:@"cell"];
    if ( cell == nil ){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    if ( indexPath.row == 0 ){
    
        UIImageView * image = [[UIImageView alloc] init];
       image.frame = CGRectMake(100, 5, 70, 70);
       image.image = [UIImage imageNamed:@"36,.png"];
        
        [cell.contentView addSubview:image];
        
        UILabel * label1 = [[UILabel alloc] init];
        label1.frame = CGRectMake(20, 40, 50, 20);
        label1.font = [UIFont systemFontOfSize:20];
        label1.text = @"头像";
        [cell.contentView addSubview:label1];
    }
    else if ( indexPath.row == 1 ){
        UILabel * label2 = [[UILabel alloc] init];
        label2.frame = CGRectMake(20, 10, 50, 20);
        label2.font = [UIFont systemFontOfSize:20];
        label2.text = @"昵称";
        [cell.contentView addSubview:label2];
        
        UILabel * label3 = [[UILabel alloc] init];
        label3.frame = CGRectMake(100, 10, 250, 20);
        label3.font = [UIFont systemFontOfSize:20];
        label3.text = @"小白";
        [cell.contentView addSubview:label3];
        
    }
    else if ( indexPath.row == 2 ){
        UILabel * label4 = [[UILabel alloc] init];
        label4.frame = CGRectMake(20, 10, 50, 20);
        label4.font = [UIFont systemFontOfSize:20];
        label4.text = @"性别";
        [cell.contentView addSubview:label4];
        
        UIImageView * image1 = [[UIImageView alloc] init];
        image1.frame = CGRectMake(100, 10, 20, 20);
        image1.image = [UIImage imageNamed:@"46,.png"];
        
        UILabel * label5 = [[UILabel alloc] init];
        label5.frame = CGRectMake(120, 10, 30, 30);
        label5.text = @"男";
        
        UIImageView * image2 = [[UIImageView alloc] init];
        image2.frame = CGRectMake(200, 10, 20, 20);
        image2.image = [UIImage imageNamed:@"47,.png"];
        
        UILabel * label6 = [[UILabel alloc] init];
        label6.frame = CGRectMake(220, 10, 30, 30);
        label6.text = @"女";
        
        [cell.contentView addSubview:image1];
        [cell.contentView addSubview:label5];
        [cell.contentView addSubview:image2];
        
        [cell.contentView addSubview:label6];
    }
    else if ( indexPath.row == 3 ){
        UILabel * label7 = [[UILabel alloc] init];
        label7.frame = CGRectMake(20, 10, 50, 20);
        label7.font = [UIFont systemFontOfSize:20];
        label7.text = @"签名";
        [cell.contentView addSubview:label7];
        
        UILabel * label8 = [[UILabel alloc] init];
        label8.frame = CGRectMake(100, 10, 300, 20);
        label8.font = [UIFont systemFontOfSize:15];
        label8.text = @"开心了就笑，不开心了就过会再笑";
        [cell.contentView addSubview:label8];
    }
    else if ( indexPath.row == 4 ){
        UILabel * label9 = [[UILabel alloc] init];
        label9.frame = CGRectMake(20, 10, 50, 20);
        label9.font = [UIFont systemFontOfSize:20];
        label9.text = @"邮箱";
        [cell.contentView addSubview:label9];
        
        UILabel * label18 = [[UILabel alloc] init];
        label18.frame = CGRectMake(100, 10, 250, 20);
        label18.font = [UIFont systemFontOfSize:20];
        label18.text = @"187###3@qq.com";
        [cell.contentView addSubview:label18];
    }
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ( indexPath.row == 0 ){
        return 100;
    }
    return 70;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationItem.title = @"基本资料";
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
    SetUpViewController * fu = [[SetUpViewController alloc] init];
    
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
