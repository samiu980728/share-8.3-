//
//  VCFiveth.h
//  share
//
//  Created by 萨缪 on 2018/7/27.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCFiveth : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>
{
    UITableView * _tableView;
    
    NSArray * mainArray;
    
    NSArray * detailArray1;
    
    NSArray * detailArray2;
    
    NSArray * imageArray1;
    
    NSArray * btnArray1;
    
    NSArray * btnArray2;
    
    NSArray * btnArray3;
    
    NSArray * btnImageArray1;
    
    NSArray * btnImageArray2;
    
    NSArray * btnImageArray3;
    
    NSArray * titleArray;
}

@end
