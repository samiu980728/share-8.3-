//
//  VCSecond.m
//  share
//
//  Created by 萨缪 on 2018/7/27.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "VCSecond.h"
#import "JPXForSecondTableViewCell.h"
#import "FUForSecond.h"
#import "DabaiViewController.h"
#import "PictureUpLoadViewController.h"
@interface VCSecond ()<UITableViewDelegate,UITableViewDataSource,UISearchResultsUpdating,UITextFieldDelegate>


@property (nonatomic,strong) UISearchController *searchController;



@property (nonatomic,strong)UITableView *tableView;

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0,self.view.frame.size.width,self.view.frame.size.height)style:UITableViewStyleGrouped];
    
    [self.tableView registerClass:[JPXForSecondTableViewCell class] forCellReuseIdentifier:@"labelCell"];
    
    self.tableView.dataSource =self;
    
    self.tableView.delegate =self;
    
    [self.view addSubview:self.tableView];
    
    
    
    // 创建UISearchController
    
    
//    _searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
//
//    _searchController.searchResultsUpdater = self;
//
//    _searchController.dimsBackgroundDuringPresentation =NO;
//
//    _searchController.hidesNavigationBarDuringPresentation =NO;
//
//    _searchController.searchBar.frame =CGRectMake(self.searchController.searchBar.frame.origin.x,self.searchController.searchBar.frame.origin.y,self.searchController.searchBar.frame.size.width, 44.0);
    
    UITextField * text = [[UITextField alloc] init];
    text.delegate = self;
    text.borderStyle = UITextBorderStyleRoundedRect;
    text.backgroundColor = [UIColor whiteColor];
    text.clearButtonMode = UITextFieldViewModeAlways;
    UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"54,.png"]];
    text.leftView = imageView;
    text.leftViewMode = UITextFieldViewModeAlways;
    text.frame = CGRectMake(5, 5, [UIScreen mainScreen].bounds.size.width-10, 30);
    //self.tableView.tableHeaderView = text;
    [text addTarget:self action:@selector(dabai:) forControlEvents:UIControlEventEditingDidEnd];
    [self.view addSubview:text];
    //self.tableView.tableHeaderView = text;
    //self.tableView.tableHeaderView =self.searchController.searchBar;
    
    //处理最后一个单元格被分栏控制器遮盖
    
    
//    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
//    self.edgesForExtendedLayout = UIRectEdgeAll;
//    self.automaticallyAdjustsScrollViewInsets = NO;
    
    array1 = [NSArray arrayWithObjects:@" ",@"平面设计",@"虚拟设计",@" ",@"人气最高",@" ",@"30分钟前",@" ",@" ",@" ", nil];
    
    array2 = [NSArray arrayWithObjects:@" ",@"网页设计",@"影视",@" ",@"收藏最多",@" ",@"1小时前",@" ",@" ",@" ", nil];
    
    array3 = [NSArray arrayWithObjects:@" ",@"UI/icon",@"摄影",@" ",@"评论最多",@" ",@"1月前",@" ",@" ",@" ", nil];
    
    array4 = [NSArray arrayWithObjects:@" ",@"插画/手绘",@"其他",@" ",@"编辑精选",@" ",@"1年前",@" ",@" ",@" ", nil];
    
    //array5 = [NSArray arrayWithObjects:@"分类",@" ",@" ",@"推荐",@" ",@"时间",@" ", nil];
    array5 = [NSArray arrayWithObjects:@"fen_lei.png",@" ",@" ",@"tui_jian.png",@" ",@"shi_jian.png",@" ", nil];
    
    array6 = [NSArray arrayWithObjects:@"home_line.png",@" ",@" ",@"home_line.png",@" ",@"home_line.png",@" ", nil];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    return [textField resignFirstResponder];
}

- (void)dabai:(UITextField *)tf
{
    NSString * str = tf.text;
    NSString * str1 = @"Dabai";
    if ( [str1 isEqualToString:str] ){
        DabaiViewController * a = [DabaiViewController new];
        [self.navigationController pushViewController:a animated:YES];
    }
}

// self.searchController.active 当前的状态

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [self.view endEditing:YES];
//}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 7;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //static NSString *flag=@"cellFlag";
    
    //UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:flag];
    
//    if (cell==nil) {
//
//        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:flag];
//
//    }
    
    JPXForSecondTableViewCell * cell1 = nil;
    
    UITableViewCell * cell = nil;
    
//    cell1 = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
    
    if ((indexPath.row == 0) || (indexPath.row == 3) || (indexPath.row == 5)) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
        if ( cell == nil ){
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
//            _imageView1.frame = CGRectMake(0, 7, 75, 23);
//            _imageLine.frame = CGRectMake(0, 29, 400, 2);
            
            UIImageView * _imageView1 = [[UIImageView alloc] init];
            UIImageView * _imageLine = [[UIImageView alloc] init];
            
            _imageView1.frame = CGRectMake(0, 7, 75, 23);
            _imageLine.frame = CGRectMake(0, 29, 400, 2);
            
            _imageView1.image = [UIImage imageNamed:[array5 objectAtIndex:indexPath.row]];
            
            _imageLine.image = [UIImage imageNamed:[array6 objectAtIndex:indexPath.row]];
            
            [cell.contentView addSubview:_imageLine];
            [cell.contentView addSubview:_imageView1];
            
//            UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//            [btn addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
//
//           // [btn setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
//            btn.layer.cornerRadius = 4;
//            btn.tintColor = [UIColor colorWithRed:0.12 green:0.50 blue:0.81 alpha:1.00];
//            btn.backgroundColor = [UIColor whiteColor];
//
//            btn.frame = CGRectMake(0, 4, 100, 32);
//            btn.titleLabel.font = [UIFont systemFontOfSize:17];
////            btn.imageView.frame = CGRectMake(10, 10, 20, 20);
////            btn.imageView.image = [UIImage imageNamed:@"50,.png"];
//
////            btn.titleLabel.frame = CGRectMake(30, 10, 100, 20);
////            btn.titleLabel.font = [UIFont systemFontOfSize:20];
////            btn.titleLabel.text = [array5 objectAtIndex:indexPath.row];
//            [btn setTitle:[array5 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
//            [btn setImage:[UIImage imageNamed:@"50,.png"] forState:UIControlStateNormal];
//            [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//            
//            [cell.contentView addSubview:btn];
        }
        cell.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.94f alpha:1.00f];
        return cell;
        //[cell1.button2 setTitle:[array5 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
        
    }
    else{
        cell1 = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
        [cell1.button2 setTitle:[array1 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
        
        [cell1.button3 setTitle:[array2 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
        
        [cell1.button4 setTitle:[array3 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
        
        [cell1.button5 setTitle:[array4 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
       //[cell1.button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //cell1.button2.titleLabel.text = [array1 objectAtIndex:indexPath.row];
//        cell1.button3.titleLabel.text = [array2 objectAtIndex:indexPath.row];
//        cell1.button4.titleLabel.text = [array3 objectAtIndex:indexPath.row];
//        cell1.button5.titleLabel.text = [array4 objectAtIndex:indexPath.row];
//
        
    }
    cell1.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.94f alpha:1.00f];
    //cell1.button1.imageView.image = [UIImage imageNamed:@"7.png"];
    return cell1;
    
    
    
}

- (void)pressButton1:(UIButton *)button
{
    button.selected = !button.selected;
    if (button.selected == YES) {
        button.backgroundColor = [UIColor colorWithRed:0.12 green:0.50 blue:0.81 alpha:1.00];
    }
    else {
        
    }
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.title = @"搜索";
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"2.png"] forBarMetrics:nil];
    
    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"58," ofType:@"png"];

    NSData * data1 = [NSData dataWithContentsOfFile:filePath1];
    
    //暂时把action设置为nil 等会还要上传照片
    UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:data1] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:@selector(clickMe:)];

    self.navigationItem.leftBarButtonItem = item1;
    
//    FUForSecond * a = [FUForSecond new];
//    UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(clickMe:)];
    
//    a.navigationItem.leftBarButtonItem = item;
//    a.navigationItem.backBarButtonItem = item;
//    a.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
//    a.view.backgroundColor = [UIColor whiteColor];
//    self.hidesBottomBarWhenPushed = YES;
//    [self.navigationController pushViewController:a animated:YES];
//    self.hidesBottomBarWhenPushed = NO;
    
    
    NSString * filePath2 = [[NSBundle mainBundle] pathForResource:@"177" ofType:@"png"];
    
    NSData * data2 = [NSData dataWithContentsOfFile:filePath2];
    
    UIBarButtonItem * item2 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:data2] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:@selector(clickMe1:)];
    
    self.navigationItem.rightBarButtonItem = item2;
    
    
}

- (void)clickMe:(id)sender
{
//    FUForSecond * fu = [[FUForSecond alloc] init];
//
//    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
//
//    [self presentViewController:nav animated:YES completion:nil];
    //[self.navigationController popViewControllerAnimated:YES];
    
    
//    DabaiViewController * a = [[DabaiViewController alloc] init];
//    [self.navigationController pushViewController:a animated:YES];
}

- (void)clickMe1:(id)sender
{
//    PictureUpLoadViewController * fu = [[PictureUpLoadViewController alloc] init];
//
//    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
//
//    [self presentViewController:nav animated:YES completion:nil];
    PictureUpLoadViewController * a = [[PictureUpLoadViewController alloc] init];
    [self.navigationController pushViewController:a animated:YES];
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
