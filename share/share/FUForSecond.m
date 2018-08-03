//
//  FUForSecond.m
//  share
//
//  Created by 萨缪 on 2018/7/29.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "FUForSecond.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFourth.h"
#import "VCFiveth.h"
#import "FuSecondCollectionViewCell.h"

@interface FUForSecond ()

@end

@implementation FUForSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //初始化layout
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc] init];
    
    layout.itemSize = CGSizeMake(120, 120);
    
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    //初始化collectionView
    mainCollectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    [self.view addSubview:mainCollectionView];
    mainCollectionView.backgroundColor = [UIColor clearColor];
    
//    CGFloat collectionWh = self.view.frame.size.width;
//    mainCollectionView.frame = CGRectMake(0, 0, collectionWh, collectionWh);
    
    mainCollectionView.allowsMultipleSelection = YES;
    
    mainCollectionView.delaysContentTouches = false;
    //注册
    [mainCollectionView registerClass:[FuSecondCollectionViewCell class] forCellWithReuseIdentifier:@"cellId"];
    //代理
    mainCollectionView.delegate = self;
    mainCollectionView.dataSource = self;
    
    array1Image = [NSArray arrayWithObjects:@"29.jpg",@"30.jpg",@"22.jpg",@"23.jpg",@"24.jpg",@"25.jpg",@"1.JPG",@"2.JPG",@"28.jpg", nil];
    
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    FuSecondCollectionViewCell * cell = (FuSecondCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndexPath:indexPath];
    
    if ( cell.isSelected ){
        cell.backgroundColor = [UIColor grayColor];
    }else{
        cell.backgroundColor = [UIColor whiteColor];
    }
    cell.image.image = [UIImage imageNamed:[array1Image objectAtIndex:indexPath.row]];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(120, 120);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

//点击高亮
- (void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    FuSecondCollectionViewCell * cell = (FuSecondCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndexPath:indexPath];
    [cell setBackgroundColor:[UIColor grayColor]];
}

//恢复颜色
- (void)collectionView:(UICollectionView *)collectionView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    FuSecondCollectionViewCell * cell = (FuSecondCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndexPath:indexPath];
    [cell setBackgroundColor:[UIColor clearColor]];
}

////选中某item
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //根据idenxPath获取对应的cell

    UICollectionViewCell *cell =  [collectionView cellForItemAtIndexPath:indexPath];

    cell.backgroundColor = [UIColor grayColor];
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath{

    UICollectionViewCell *cell =  [collectionView cellForItemAtIndexPath:indexPath];

    cell.backgroundColor = [UIColor orangeColor];
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 5;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 5;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 9;
}




- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationItem.title = @"选择图片";
    [self.navigationController.navigationBar setBackgroundImage: [UIImage imageNamed:@"2.png"] forBarMetrics:nil];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"177" ofType:@"png"];

    NSData * data1 = [NSData dataWithContentsOfFile:filePath1];
    
    //暂时把action设置为nil 等会还要上传照片
    UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:data1] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:@selector(clickMe11:)];
    //UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(clickMe:)];

    self.navigationItem.leftBarButtonItem = item1;
    
    
    NSString * filePath2 = [[NSBundle mainBundle]pathForResource:@"166" ofType:@"png"];
    
    NSData * data3 = [NSData dataWithContentsOfFile:filePath2];
    
    UIBarButtonItem * item2 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:data3] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:@selector(pressBtn:)];
    
    self.navigationItem.rightBarButtonItem = item2;
    
    
}

- (void)pressBtn:(UIButton *)btn
{
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"确定上传图片?" message:@"想好" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * action1 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击，进入");
    }];
    
    UIAlertAction * action2 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击，取消");
    }];
    
    [alert addAction:action1];
    [alert addAction:action2];
    
    [self presentViewController:alert animated:YES completion:nil];
}


- (void)clickMe11:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)clickMe:(id)sender{
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
