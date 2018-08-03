//
//  ChangePassWordViewController.m
//  share
//
//  Created by 萨缪 on 2018/7/31.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "ChangePassWordViewController.h"
#import "SetUpViewController.h"
@interface ChangePassWordViewController ()

@end

@implementation ChangePassWordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    dataArray1 = [NSArray arrayWithObjects:@"旧密码",@"新密码",@"确认密码",@" ", nil];
    
    dataArray2 = [NSArray arrayWithObjects:@"6-20英文或数字组合",@"6-20英文或数字组合",@"请再次确认输入密码",@" ", nil];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell1 = nil;
    cell1 = [_tableView dequeueReusableCellWithIdentifier:@"cell1"];
    if ( cell1 == nil ){
        cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
        if ( indexPath.row == 3 ){
            UIButton * btn = [[UIButton alloc] init];
            btn.frame = CGRectMake(180, 30, 40, 40);
            [btn setTitle:@"提交" forState:UIControlStateNormal];
            [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [btn addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
            [cell1.contentView addSubview:btn];
        }
        
    }
    if ( indexPath.row <= 2 ){
    UILabel * label1 = [[UILabel alloc] init];
    label1.frame = CGRectMake(20, 25, 100, 20);
    label1.font = [UIFont systemFontOfSize:20];
    label1.text = [dataArray1 objectAtIndex:indexPath.row];
    [cell1.contentView addSubview:label1];
    
    UILabel * label2 = [[UILabel alloc] init];
    label2.frame = CGRectMake(180, 25, 250, 20);
    label2.font = [UIFont systemFontOfSize:20];
    label2.text = [dataArray2 objectAtIndex:indexPath.row];
    [cell1.contentView addSubview:label2];
    }
    
    return cell1;
}

- (void)buttonPressed:(UIButton *)button
{
    //实现按钮状态的切换
    button.selected = !button.selected;
    if ( button.selected ){
        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"确认提交" message:@"想好" preferredStyle:UIAlertControllerStyleAlert];
        
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
    return 70;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationItem.title = @"修改密码";
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
