//
//  DabaiViewController.m
//  share
//
//  Created by 萨缪 on 2018/8/2.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "DabaiViewController.h"
#import "VCSecond.h"
#import "BaiDaFUTableViewCell.h"
@interface DabaiViewController ()

@end

@implementation DabaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITextField * text = [[UITextField alloc] init];
    text.borderStyle = UITextBorderStyleRoundedRect;
    text.backgroundColor = [UIColor whiteColor];
    text.clearButtonMode = UITextFieldViewModeAlways;
    UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"54,.png"]];
    text.text = @"Dabai";
    text.leftView = imageView;
    text.leftViewMode = UITextFieldViewModeAlways;
    text.frame = CGRectMake(5, 5, [UIScreen mainScreen].bounds.size.width-10, 30);
    [self.view addSubview:text];
    
    self.view.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.94f alpha:1.00f];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    [_tableView registerClass:[BaiDaFUTableViewCell class] forCellReuseIdentifier:@"labelCell"];
    
    //设置代理
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    mainArray = [NSArray arrayWithObjects:@"Icon Of Baymax",@"每个人都需要一个大白",@"经过艳阳,看到希望", nil];
    
    detailArray1 = [NSArray arrayWithObjects:@"原创-UI-icon",@"原创作品-摄影",@"原创-文字", nil];
    
    detailArray2 = [NSArray arrayWithObjects:@"15分钟前",@"1个月前",@"三年前", nil];
    
    imageArray1 = [NSArray arrayWithObjects:@"29.jpg",@"20,.png",@"22.jpg", nil];
    
    btnImageArray1 = [NSArray arrayWithObjects:@"13.png",@"13.png",@"13.png", nil];
    
    btnImageArray2 = [NSArray arrayWithObjects:@"14.png",@"14.png",@"14.png", nil];
    
    btnImageArray3 = [NSArray arrayWithObjects:@"15.png",@"15.png",@"15.png", nil];
    
    numArray = [NSArray arrayWithObjects:@"102",@"26",@"20", nil];
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BaiDaFUTableViewCell * cell1 = nil;
    
    cell1 = [_tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
    
    cell1.mainString.text = [mainArray objectAtIndex:indexPath.row];
    
    cell1.detailString1.text = [detailArray1 objectAtIndex:indexPath.row];
    
    cell1.detailString2.text = [detailArray2 objectAtIndex:indexPath.row];
    
    [cell1.btn1 setImage:[UIImage imageNamed:[btnImageArray1 objectAtIndex:indexPath.row]] forState:UIControlStateNormal];
    [cell1.btn1 setTitle:@" 102" forState:UIControlStateNormal];
    [cell1.btn1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [cell1.btn1 setTitle:@" 103" forState:UIControlStateSelected];
    
    [cell1.btn2 setImage:[UIImage imageNamed:[btnImageArray2 objectAtIndex:indexPath.row]] forState:UIControlStateNormal];
    [cell1.btn2 setTitle:@" 53" forState:UIControlStateNormal];
    [cell1.btn2 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [cell1.btn2 setTitle:@" 54" forState:UIControlStateSelected];
    
    [cell1.btn3 setImage:[UIImage imageNamed:[btnImageArray3 objectAtIndex:indexPath.row]] forState:UIControlStateNormal];
    [cell1.btn3 setTitle:@" 39" forState:UIControlStateNormal];
    [cell1.btn3 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [cell1.btn3 setTitle:@" 40" forState:UIControlStateSelected];
    
    cell1.image.image = [UIImage imageNamed:imageArray1[indexPath.row]];
    
    return cell1;
}

- (void)buttonPressed:(UIButton *)button
{
    //实现按钮状态的切换
    button.selected = !button.selected;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.title = @"搜索";
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"2.png"] forBarMetrics:nil];
    
    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"177" ofType:@"png"];
    
    NSData * data1 = [NSData dataWithContentsOfFile:filePath1];
    
    //暂时把action设置为nil 等会还要上传照片
    UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:data1] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:@selector(clickMe:)];
    
    self.navigationItem.leftBarButtonItem = item1;
}

- (void)clickMe:(id)sender
{
    //    PictureUpLoadViewController * fu = [[PictureUpLoadViewController alloc] init];
    //
    //    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
    //
    //    [self presentViewController:nav animated:YES completion:nil];
    VCSecond * a = [[VCSecond alloc] init];
    [self.navigationController popViewControllerAnimated:YES];
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
