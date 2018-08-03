//
//  VCFourth.m
//  share
//
//  Created by 萨缪 on 2018/7/27.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "VCFourth.h"
#import "JPXForFourthTableViewCell.h"
@interface VCFourth ()

@end

@implementation VCFourth

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    [_tableView registerClass:[JPXForFourthTableViewCell class] forCellReuseIdentifier:@"labelCell"];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    imageArray = [NSArray arrayWithObjects:@"2,.png",@"3,.png",@"4,.png", nil];
    
    labelArray = [NSArray arrayWithObjects:@"下厨也要美美的，从一条围裙开始-六月鲜围裙创意设计大赛",@"MIUI主题市场让你的创意改变世界",@"做你害怕的事，然后你会发现，不过如此", nil];
    
    
    //处理最后一个单元格被分栏控制器遮盖
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
}






- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    JPXForFourthTableViewCell * cell1 = nil;
    cell1 = [_tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
    
    
    cell1.label.text = [labelArray objectAtIndex:indexPath.row];
    
    cell1.image.image = [UIImage imageNamed:[imageArray objectAtIndex:indexPath.row]];
    
    return cell1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 245;
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
    self.navigationItem.title = @"活动";
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"2.png"] forBarMetrics:nil];
    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"58," ofType:@"png"];
    
    NSData * dataImage = [NSData dataWithContentsOfFile:filePath1];
    
    UIBarButtonItem * itemBtn1 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:dataImage] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:nil];
    
    self.navigationItem.leftBarButtonItem = itemBtn1;
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
