//
//  PersonalMessageViewController.h
//  share
//
//  Created by 萨缪 on 2018/7/31.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonalMessageViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>
{
    UITableView * _tableView;
    
    NSArray * imageArray;
    
    NSArray * mainStringArray;
    
    NSArray * detailStringArray;
    
    NSArray * timeArray;
}



@end
