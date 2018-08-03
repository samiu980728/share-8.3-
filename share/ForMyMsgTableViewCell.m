//
//  ForMyMsgTableViewCell.m
//  share
//
//  Created by 萨缪 on 2018/7/31.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "ForMyMsgTableViewCell.h"
#import "NewWatchViewController.h"
@implementation ForMyMsgTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ( self ){
        _btn = [[UIButton alloc] init];
        _rightString = [[UILabel alloc] init];
        
        [self.contentView addSubview:_btn];
        [self.contentView addSubview:_rightString];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _btn.frame = CGRectMake(250, 15, 20, 20);
    
    _rightString.frame = CGRectMake(300, 15, 20, 20);
    _rightString.font = [UIFont systemFontOfSize:15];
    _rightString.textColor = [UIColor blackColor];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
