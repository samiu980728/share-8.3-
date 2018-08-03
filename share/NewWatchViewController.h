//
//  NewWatchViewController.h
//  share
//
//  Created by 萨缪 on 2018/7/31.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewWatchViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>
{
    UITableView * _tableView;
    
    NSArray * imageArray;
    
    NSArray * nameArray;
    
    NSArray * btnArray;
}


@end
