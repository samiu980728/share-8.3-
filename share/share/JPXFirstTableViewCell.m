//
//  JPXFirstTableViewCell.m
//  share
//
//  Created by 萨缪 on 2018/7/27.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "JPXFirstTableViewCell.h"

@implementation JPXFirstTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if  ( self ){
        _image = [[UIImageView alloc] init];
        
        _detailString1 = [[UILabel alloc] init];
        
        _detailString2 = [[UILabel alloc] init];
        
        _detailString3 = [[UILabel alloc] init];
        
        _mainString = [[UILabel alloc] init];
        
        _mainString.textColor = [UIColor blackColor];
        
        _btn1 = [[UIButton alloc] init];
        
        _btn2 = [[UIButton alloc] init];
        
        _btn3 = [[UIButton alloc] init];
        
        _btnSet = [[UIButton alloc] init];
        
        [self.contentView addSubview:_image];
        
        [self.contentView addSubview:_detailString1];
        
        [self.contentView addSubview:_detailString2];
        
        [self.contentView addSubview:_detailString3];
        
        [self.contentView addSubview:_mainString];
        
        [self.contentView addSubview:_btnSet];
        
        [self.contentView addSubview:_btn3];
        
        [self.contentView addSubview:_btn2];
        
        [self.contentView addSubview:_btn1];
    }
    return self;
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    _mainString.frame = CGRectMake(155, 0, 200, 25);
    
    _detailString1.frame = CGRectMake(155, 40, 150, 20);
    
    _detailString2.frame = CGRectMake(155, 60, 250, 20);
    
    _detailString3.frame = CGRectMake(300, 0, 100, 20);
    
    _btn1.frame = CGRectMake(150, 100, 70, 20);
    
    _btn2.frame = CGRectMake(230, 100, 70, 20);
    
    _btn3.frame = CGRectMake(310, 100, 70, 20);
    
    _image.frame = CGRectMake(0, 0, 150, 120);
    
    [_btn1 setTitleColor:[UIColor colorWithRed:0.00f green:0.56f blue:0.81f alpha:1.00f] forState:UIControlStateNormal];
    
    [_btn2 setTitleColor:[UIColor colorWithRed:0.00f green:0.56f blue:0.81f alpha:1.00f] forState:UIControlStateNormal];
    
    [_btn3 setTitleColor:[UIColor colorWithRed:0.00f green:0.56f blue:0.81f alpha:1.00f] forState:UIControlStateNormal];
    
    
    _mainString.font = [UIFont systemFontOfSize:15];
    
    _detailString1.font = [UIFont systemFontOfSize:12];
    
    _detailString2.font = [UIFont systemFontOfSize:12];
    
    _detailString3.font = [UIFont systemFontOfSize:12];
    
    
    _btnSet.frame = CGRectMake(300, 0, 100, 20);
    
    [_btnSet setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
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
