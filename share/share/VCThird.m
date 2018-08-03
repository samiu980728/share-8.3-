//
//  VCThird.m
//  share
//
//  Created by 萨缪 on 2018/7/27.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "VCThird.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCFourth.h"
#import "VCFiveth.h"
#import "JPXForThirdTableViewCell.h"


#import "TopView.h"
#import "FirstTableView.h"
#import "SecondTableView.h"
#import "ThirdTableView.h"
#import "BackgroundView.h"
#import "UIView+Extension.h"
#define kItemheight 50

#define kScreen_Width [UIScreen mainScreen].bounds.size.width
#define kScreen_Height [UIScreen mainScreen].bounds.size.height
#define kTopView_Height 50 //这里本来是200哦！！！
@interface VCThird ()<UIScrollViewDelegate>

@property (strong, nonatomic) UIScrollView *bottomScrollView;
@property (strong, nonatomic) TopView *topView;
@property (strong, nonatomic) FirstTableView *firstTableView;
@property (strong, nonatomic) SecondTableView *secondTableView;
@property (strong, nonatomic) ThirdTableView *thirdTableView;



@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.view.backgroundColor = [UIColor whiteColor];
    
//    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
//
//    [_tableView registerClass:[JPXForThirdTableViewCell class] forCellReuseIdentifier:@"labelCell"];
//
//    _tableView.delegate = self;
//
//    _tableView.dataSource = self;
//    
//    [self.view addSubview:_tableView];
    
    
//    UIView* titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40)];
//    titleView.backgroundColor = [UIColor colorWithRed:0.36f green:0.36f blue:0.36f alpha:1.00f];
//
//
//    UIButton* firstButton = [[UIButton alloc] init];
//    [firstButton setTitle:@"精选文章" forState:UIControlStateNormal];
//    firstButton.titleLabel.font = [UIFont systemFontOfSize:20];
//    firstButton.tintColor = [UIColor whiteColor];
//    firstButton.frame = CGRectMake(50, 10, 100, 20);
//
//    UIButton* secondButton = [[UIButton alloc] init];
//    [secondButton setTitle:@"热门推荐" forState:UIControlStateNormal];
//    secondButton.titleLabel.font = [UIFont systemFontOfSize:20];
//    secondButton.tintColor = [UIColor whiteColor];
//    secondButton.frame = CGRectMake(150, 10, 100, 20);
//
//    UIButton* thridButton = [[UIButton alloc] init];
//    [thridButton setTitle:@"全部文章" forState:UIControlStateNormal];
//    thridButton.titleLabel.font = [UIFont systemFontOfSize:20];
//    thridButton.tintColor = [UIColor whiteColor];
//    thridButton.frame = CGRectMake(250, 10, 100, 20);
//
//    [titleView addSubview:firstButton];
//    [titleView addSubview:secondButton];
//    [titleView addSubview:thridButton];
//    _tableView.tableHeaderView = titleView;
    
//    mainArray = [NSArray arrayWithObjects:@"关于设计反馈的5件事",@"用户设计PK战!",@"字体故事",@"高效解决多风格要求", nil];
//
//    detailArray1 = [NSArray arrayWithObjects:@"share小白",@"share小王",@"share小吕",@"share小景", nil];
//
//    detailArray2 = [NSArray arrayWithObjects:@"设计文章-原创-理论",@"设计文章-原创-Web/Flash",@"设计文章-经验-设计观点-",@"设计文章-经验-案例分析", nil];
//
//    detailArray3 = [NSArray arrayWithObjects:@"16分钟前",@"17分钟前",@"45分钟前",@"4小时前", nil];
//
//    btnImageArray1 = [NSArray arrayWithObjects:@"13.png",@"13.png",@"13.png",@"13.png", nil];
//
//    btnImageArray2 = [NSArray arrayWithObjects:@"14.png",@"14.png",@"14.png",@"14.png", nil];
//
//    btnImageArray3 = [NSArray arrayWithObjects:@"15.png",@"15.png",@"15.png",@"15.png", nil];
//
//    imageArray1 = [NSArray arrayWithObjects:@"22,.png",@"23,.png",@"24,.png",@"25,.png", nil];
    
    
    //处理最后一个单元格被分栏控制器遮盖
//    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
//    self.edgesForExtendedLayout = UIRectEdgeAll;
//    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    //next相关
    [self.view addSubview:self.bottomScrollView];
    [self.view addSubview:self.topView];
}



//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    JPXForThirdTableViewCell * cell1 = nil;
//    cell1 = [_tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
//    cell1.mainString.text = [mainArray objectAtIndex:indexPath.row];
//
//    cell1.detailString1.text = [detailArray1 objectAtIndex:indexPath.row];
//
//    cell1.detailString2.text = [detailArray2 objectAtIndex:indexPath.row];
//
//    cell1.detailString3.text = [detailArray3 objectAtIndex:indexPath.row];
//
//    [cell1.btn1 setImage:[UIImage imageNamed:[btnImageArray1 objectAtIndex:indexPath.row]] forState:UIControlStateNormal];
//    //[cell1.btn1 setTitle:@"102" forState:UIControlStateNormal];
//
//    [cell1.btn2 setImage:[UIImage imageNamed:[btnImageArray2 objectAtIndex:indexPath.row]] forState:UIControlStateNormal];
//
//    [cell1.btn3 setImage:[UIImage imageNamed:[btnImageArray3 objectAtIndex:indexPath.row]] forState:UIControlStateNormal];
//
//    cell1.image.image = [UIImage imageNamed:[imageArray1 objectAtIndex:indexPath.row]];
//
//    return cell1;
//}
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//
//    return 4;
//}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return 150;
//}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.title = @"文章";
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"2.png"] forBarMetrics:nil];
    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"177" ofType:@"png"];
    
    NSData * dataImage = [NSData dataWithContentsOfFile:filePath1];
    
    UIBarButtonItem * itemBtn1 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:dataImage] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:@selector(clickMe:)];
    
    self.navigationItem.leftBarButtonItem = itemBtn1;
//    self.navigationController.navigationBar.translucent = NO;
//    self.navigationItem.title = @"搜索";
//
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"2.png"] forBarMetrics:nil];
//
//    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"166" ofType:@"png"];
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
    
    //push方法
   // [self.navigationController pushViewController:[[VCFirst alloc]init] animated:YES];
    
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




//从这里开始 nest 相关函数
- (void)loadView
{
    [super loadView];
    
    BackgroundView *view = [[BackgroundView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    view.topView = self.topView;
    view.scrollView = self.bottomScrollView;
    view.firstTableView = self.firstTableView;
    view.secondTableView = self.secondTableView;
    view.thirdTableView = self.thirdTableView;
    self.view = view;
}

- (UIScrollView *)bottomScrollView
{
    if (!_bottomScrollView) {
        _bottomScrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        
        //这里得改成三
        _bottomScrollView.contentSize = CGSizeMake(kScreen_Width*3, 0);
        _bottomScrollView.showsVerticalScrollIndicator = NO;
        _bottomScrollView.showsHorizontalScrollIndicator = NO;
        _bottomScrollView.pagingEnabled = YES;
        _bottomScrollView.delegate = self;
        
        [_bottomScrollView addSubview:self.firstTableView];
        [_bottomScrollView addSubview:self.secondTableView];
        [_bottomScrollView addSubview:self.thirdTableView];
    }
    return _bottomScrollView;
}

- (TopView *)topView
{
    if (!_topView) {
        _topView = [[TopView alloc] initWithFrame:CGRectMake(0, 0, kScreen_Width, kTopView_Height)];
        _topView.itemHeight = kItemheight;
    }
    return _topView;
}


- (FirstTableView *)firstTableView
{
    if (!_firstTableView) {
        _firstTableView = [[FirstTableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _firstTableView.topView = self.topView;
    }
    return _firstTableView;
}


- (SecondTableView *)secondTableView
{
    if (!_secondTableView) {
        _secondTableView = [[SecondTableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _secondTableView.x = kScreen_Width*2;
        _secondTableView.topView = self.topView;
    }
    return _secondTableView;
}

- (ThirdTableView *)thirdTableView
{
    if ( !_thirdTableView ){
        _thirdTableView = [[ThirdTableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _thirdTableView.x = kScreen_Width;
        _thirdTableView.topView = self.topView;
    }
    return _thirdTableView;
}


#pragma mark - 底部的scrollViuew的代理方法scrollViewDidScroll

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat placeholderOffset = 0;
    if (self.topView.getSelectedItemIndex == 0) {
        if (self.firstTableView.contentOffset.y > self.topView.height - kItemheight) {
            placeholderOffset = self.topView.height - kItemheight;
        }
        else {
            placeholderOffset = self.firstTableView.contentOffset.y;
        }
        [self.secondTableView setContentOffset:CGPointMake(0, placeholderOffset) animated:YES];
        [self.thirdTableView setContentOffset:CGPointMake(0, placeholderOffset) animated:YES];
    }
    //这里得变 多加一个third
    //这里与TopView.m文件相呼应 三个
    else if ( self.topView.getSelectedItemIndex == 2){
        if ( self.thirdTableView.contentOffset.y > self.topView.height - kItemheight ){
            placeholderOffset = self.topView.height - kItemheight;
        }
        else {
            placeholderOffset = self.thirdTableView.contentOffset.y;
        }
        [self.secondTableView setContentOffset:CGPointMake(0, placeholderOffset) animated:YES];
        [self.firstTableView setContentOffset:CGPointMake(0, placeholderOffset) animated:YES];
    }
    else {
        if (self.secondTableView.contentOffset.y > self.topView.height - kItemheight) {
            placeholderOffset = self.topView.height - kItemheight;
        }
        else {
            placeholderOffset = self.secondTableView.contentOffset.y;
        }
        [self.firstTableView setContentOffset:CGPointMake(0, placeholderOffset) animated:YES];
        [self.thirdTableView setContentOffset:CGPointMake(0, placeholderOffset) animated:YES];
    }
}


#pragma mark - 底部的scrollViuew的代理方法scrollViewDidEndDecelerating

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger index = ceilf(scrollView.contentOffset.x / kScreen_Width);
    self.topView.selectedItemIndex = index;
}
//#define kItemheight 50
//
//#define kScreen_Width [UIScreen mainScreen].bounds.size.width
//#define kScreen_Height [UIScreen mainScreen].bounds.size.height
//#define kTopView_Height 200






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
