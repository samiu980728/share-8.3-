//
//  VCFirst.m
//  share
//
//  Created by 萨缪 on 2018/7/27.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "VCFirst.h"
#import "JPXFirstTableViewCell.h"
#import "FuVCFirst.h"

@interface VCFirst ()

@property (nonatomic,retain) UIScrollView *scrollView;
@property (nonatomic,retain) UIPageControl *pageControl;
@property (nonatomic,strong)NSTimer *timer;

@end

@implementation VCFirst

-(void)dealloc{
    self.scrollView = nil;
    self.pageControl = nil;
    //[super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //调用方法
//    [self createCollectionView];
//    [self createPhone];
//    [self createPage];
//    [self addTimer];
    //这是轮播图
    
//    _tableView.tableHeaderView = [[UITableView alloc] init];
//
//    //self._tableView.tableHeaderView = [self layout];
//
//    self.tableView.tableHeaderView =
    
    UIView * titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 180)];
    
    titleView.backgroundColor = [UIColor whiteColor];
    _tableView.tableHeaderView = titleView;
    
    //自定义cell
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    [_tableView registerClass:[JPXFirstTableViewCell class] forCellReuseIdentifier:@"labelCell"];
    
    //设置代理
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    mainArray = [NSArray arrayWithObjects:@" ",@" ",@"假日",@"国外画册欣赏",@"collection扁平设计", nil];
    
    detailArray1 = [NSArray arrayWithObjects:@" ",@" ",@"原创-插画-练习习作",@"平面设计-画册设计",@"平面设计-海报设计", nil];
    
    detailArray2 = [NSArray arrayWithObjects:@" ",@" ",@"15分钟前",@"16分钟前",@"17分钟前", nil];
    
    imageArray1 = [NSArray arrayWithObjects:@"6.",@"7.",@"10.png",@"11.png",@"12.png", nil];
    
    btnImageArray1 = [NSArray arrayWithObjects:@",",@",",@"13.png",@"13.png",@"13.png", nil];
    
    btnImageArray2 = [NSArray arrayWithObjects:@",",@",",@"14.png",@"14.png",@"14.png", nil];
    
    btnImageArray3 = [NSArray arrayWithObjects:@",",@",",@"15.png",@"15.png",@"15.png", nil];
    
    numArray = [NSArray arrayWithObjects:@"102",@"26",@"20", nil];
    

    [self layout];
    
    //处理最后一个单元格被分栏控制器遮盖
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.automaticallyAdjustsScrollViewInsets = NO;
}









//- (void)viewDidAppear:(BOOL)animated
//{
//    imageArray1 = [NSArray arrayWithObjects:@"6.",@"7.",@"10.png",@"11.png",@"12.png", nil];
//
//}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    JPXFirstTableViewCell * cell1 = nil;
    
    cell1 = [_tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
    
//    if ( indexPath.row == 0 ){
//        [self layout];
//    }
    
    if ( indexPath.row > 1 ){
    cell1.mainString.text = [mainArray objectAtIndex:indexPath.row];
    
    cell1.detailString1.text = [detailArray1 objectAtIndex:indexPath.row];
    
    cell1.detailString2.text = [detailArray2 objectAtIndex:indexPath.row];
    
//    //加按钮
//    UIButton * btn1;
//
//    UIButton * btn2;
//
//    UIButton * btn3;
//
//        [btn1 setImage:[btnImageArray1 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
//
//        [btn2 setImage:[btnImageArray1 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
//
//        [btn3 setImage:[btnImageArray1 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
//
//
//        btn1.frame = CGRectMake(66, 65, 50, 135);
//
//        btn2.frame = CGRectMake(166, 65, 100, 135);
//
//        btn3.frame = CGRectMake(266, 65, 150, 135);
        
//        [cell1.contentView addSubview:btn1];
//
//        [cell1.contentView addSubview:btn2];
//
//        [cell1.contentView addSubview:btn3];
////
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
        
        if ( indexPath.row == 2 ){
        [cell1.btnSet setTitle:@"share小白" forState:UIControlStateNormal];
        
            [cell1.btnSet addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
        }
        

        
    //cell1.image.image = [imageArray1 objectAtIndex:indexPath.row];
    cell1.image.image = [UIImage imageNamed:imageArray1[indexPath.row]];

//    CGSize itemSize4 = CGSizeMake(40, 40);
//
//    UIGraphicsBeginImageContext(itemSize4);
//
//    CGRect imageRect4 = CGRectMake(0.0, 0.0, itemSize4.width, itemSize4.height);
//
//    [cell1.imageView.image drawInRect:imageRect4];
//
//    cell1.imageView.image = UIGraphicsGetImageFromCurrentImageContext();

//    UIGraphicsEndImageContext();
    
    }
    return cell1;
}









- (void)clickMe:(id)sender{
    
    FuVCFirst * fu = [[FuVCFirst alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:fu];
    
    [self presentViewController:nav animated:YES completion:nil];
    
    
    
}

- (void)buttonPressed:(UIButton *)button
{
    //实现按钮状态的切换
    button.selected = !button.selected;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ( indexPath.row > 1 ){
    return 150;
    }
    return 100;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize
{
    UIGraphicsBeginImageContext(CGSizeMake(reSize.width, reSize.height));
    [image drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage *reSizeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [reSizeImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

//设置一组cell 把头标题定义为[self layout]


//滚动视图
-(void)layout{
    //布局ScrollView
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 180)];
    [self.view addSubview:_scrollView];
    
    //布局pagecontrol
    //设置小滚轮的坐标
    self.pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(100, 140, 200, 30)];
    
    [self.view addSubview:_pageControl];
    
    int count = 4;
    CGSize size = self.scrollView.frame.size;
    //1 动态生成5个imageView
    for (int i = 0; i < count; i++) {
        //
        UIImageView *iconView = [[UIImageView alloc] init];
        [self.scrollView addSubview:iconView];
        
        NSString *imgName = [NSString stringWithFormat:@"%d,.png",i+1];
        iconView.image = [UIImage imageNamed:imgName];
        
        CGFloat x = i * size.width;
        //frame
        iconView.frame = CGRectMake(x, 0, size.width, size.height);
    }
    //2 设置滚动范围
    self.scrollView.contentSize = CGSizeMake(count * size.width, 0);
    self.scrollView.showsHorizontalScrollIndicator = NO;
    //3 设置分页
    self.scrollView.pagingEnabled = YES;
    
    //4 设置pageControl
    self.pageControl.numberOfPages = count;
    self.pageControl.currentPageIndicatorTintColor = [UIColor blueColor];
    self.pageControl.pageIndicatorTintColor = [UIColor blackColor];
    //5 设置scrollView的代理
    self.scrollView.delegate = self;
    //6 添加定时器
    [self addTimerTask];
    
    //添加测试View  当点击滑动textView时候 看看图片是否滑动  若是滑动则多线程成功 若是停止则是单线程
//    UITextView *testTextView = [[UITextView alloc]initWithFrame:CGRectMake(60, 260, 200, 250)];
//    testTextView.text = @"添加测试View  当滑动textView时候 看看图片是否滑动  若是滑动则多线程成功 若是停止则是单线程 主要原因是消息机制里 默认属性NSDefaultRunLoopMode是单线程用的 是另外一个属性NSRunLoopCommonModes能够在多线程中起作用";
//    testTextView.font = [UIFont fontWithName:@"Arial" size:25];
//    [self.view addSubview:testTextView];
}

//把定时器封装起来 方便调用
-(void)addTimerTask{
    //6 定时器
    NSTimer *timer = [NSTimer timerWithTimeInterval:2.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    
    self.timer = timer;
    
    //消息循环
    NSRunLoop *runloop = [NSRunLoop currentRunLoop];
    // 默认是NSDefaultRunLoopMode  但是另外一个属性NSRunLoopCommonModes 能够在多线程中起作用
    [runloop addTimer:timer forMode:NSDefaultRunLoopMode];
    
    //立即执行定时器的方法  fire 是定时器自带的方法
    // [timer fire];
}

-(void)nextImage{
    //当前页码
    NSInteger page = self.pageControl.currentPage;
    //如果是到达最后一张
    if (page == self.pageControl.numberOfPages - 1) {
        page = 0;
        //设置偏移量  当到达最后一张时候 切换到第一张  不产生从最后一张倒回第一张效果
        _scrollView.contentOffset = CGPointMake(0, 0);
        [_scrollView setContentOffset:_scrollView.contentOffset animated:YES];
    }else{
        page++;
    }
    //  self.scrollView setContentOffset:(CGPoint) animated:(BOOL)
    
    CGFloat offsetX = page * self.scrollView.frame.size.width;
    [UIView animateWithDuration:1.0 animations:^{
        self.scrollView.contentOffset = CGPointMake(offsetX, 0);
    }];
}

//正在滚动的时候
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    //   (offset.x + 100/2)/100
    int page = (scrollView.contentOffset.x + scrollView.frame.size.width / 2)/ scrollView.frame.size.width;
    self.pageControl.currentPage = page;
}
//当你点击图片按住不动的时候 把定时器停止
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    //停止定时器
    [self.timer invalidate];
}
//当不再按图片 也就是松开的时候 立马调用计时器方法
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
    //用scheduledTimerWithTimeInterval 创建定时器是用的系统默认的方法 当遇见多线程时候会出现问题
    //    self.timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    //所以还是调用上面创建的定时器方法
    [self addTimerTask];
}

//以上都是自动播放器的编写






- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
//    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
//    self.navigationController.navigationBar.backgroundColor = [UIColor blueColor];
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    self.navigationController.navigationBar.translucent = NO;
    //self.title = @"SHARE";
    self.navigationItem.title = @"SHARE";
    [self.navigationController.navigationBar setBackgroundImage: [UIImage imageNamed:@"2.png"] forBarMetrics:nil];
    self.view.backgroundColor = [UIColor whiteColor];
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
