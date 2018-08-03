//
//  NewWatchViewController.m
//  share
//
//  Created by 萨缪 on 2018/7/31.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "NewWatchViewController.h"
#import "MyMsgViewController.h"

@interface NewWatchViewController ()

@end

@implementation NewWatchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    imageArray = [NSArray arrayWithObjects:@"39,.png",@"40,.png",@"41,.png",@"42,.png",@"43,.png",@"44,.png", nil];
    
    nameArray = [NSArray arrayWithObjects:@"share小格",@"share小兰",@"share小明",@"share小雪",@"share萌萌",@"share周曹", nil];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell1 = nil;
    cell1 = [_tableView dequeueReusableCellWithIdentifier:@"cell1"];
    if ( cell1 == nil ){
        cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
        UIButton * btn = [[UIButton alloc] init];
        btn.frame = CGRectMake(320, 20, 60, 24);
        [btn setImage:[UIImage imageNamed:@"45,.png"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"38,.png"] forState:UIControlStateSelected];
        [btn addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [cell1.contentView addSubview:btn];
        
    }
    cell1.textLabel.text = [nameArray objectAtIndex:indexPath.row];
    
    cell1.imageView.image = [UIImage imageNamed:[imageArray objectAtIndex:indexPath.row]];
    
    CGSize itemSize13 = CGSizeMake(35, 35);
    
    UIGraphicsBeginImageContext(itemSize13);
    
    CGRect imageRect13 = CGRectMake(0.0, 0.0, itemSize13.width, itemSize13.height);
    
    [cell1.imageView.image drawInRect:imageRect13];
    
    cell1.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return cell1;
}

- (void)buttonPressed:(UIButton *)button
{
    //实现按钮状态的切换
    button.selected = !button.selected;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationItem.title = @"新关注的";
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
