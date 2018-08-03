//
//  JPXForFivethTableViewCell.m
//  share
//
//  Created by 萨缪 on 2018/7/30.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "JPXForFivethTableViewCell.h"

@implementation JPXForFivethTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _image = [[UIImageView alloc] init];
        
        _mainString = [[UILabel alloc] init];
        
        _detailString1 = [[UILabel alloc] init];
        
        _detailString2 = [[UILabel alloc] init];
        
//        _btn1 = [[UIButton alloc] init];
//
//        _btn2 = [[UIButton alloc] init];
//
//        _btn3 = [[UIButton alloc] init];
        
        [self.contentView addSubview:_image];
        
        [self.contentView addSubview:_mainString];
        
        [self.contentView addSubview:_detailString1];
        
        [self.contentView addSubview:_detailString2];
        
//        [self.contentView addSubview:_btn1];
//
//        [self.contentView addSubview:_btn2];
//
//        [self.contentView addSubview:_btn3];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _image.frame = CGRectMake(20, 5, 70, 70);
    
    _mainString.frame = CGRectMake(100, 5, 200, 15);
    
    _mainString.font = [UIFont systemFontOfSize:15];
    
    _detailString1.frame = CGRectMake(100, 30, 250, 15);
    
    _detailString1.font = [UIFont systemFontOfSize:14];
    
    _detailString2.frame = CGRectMake(100, 50, 300, 15);
    
    _detailString2.font = [UIFont systemFontOfSize:13];
    
//    _btn1.frame = CGRectMake(100, 75, 18, 18);
//
//    _btn1.titleLabel.text = @"22";
//
//    _btn2.titleLabel.text = @"33";
//
//    _btn3.titleLabel.text = @"44";
//
//    _btn2.frame = CGRectMake(150, 75, 18, 18);
//
//    _btn3.frame = CGRectMake(200, 75, 18, 18);
    
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
