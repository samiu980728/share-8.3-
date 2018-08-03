//
//  RecommendByMySelfTableViewCell.m
//  share
//
//  Created by 萨缪 on 2018/7/31.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "RecommendByMySelfTableViewCell.h"

@implementation RecommendByMySelfTableViewCell



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
        
        _upBtn1 = [[UIButton alloc] init];
        
        _upBtn2 = [[UIButton alloc] init];
        
        _upBtn3 = [[UIButton alloc] init];
        
        //_btnSet = [[UIButton alloc] init];
        
        [self.contentView addSubview:_image];
        
        [self.contentView addSubview:_detailString1];
        
        [self.contentView addSubview:_detailString2];
        
        [self.contentView addSubview:_detailString3];
        
        [self.contentView addSubview:_mainString];
        
        //[self.contentView addSubview:_btnSet];
        
        [self.contentView addSubview:_btn3];
        
        [self.contentView addSubview:_btn2];
        
        [self.contentView addSubview:_btn1];
    }
    return self;
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _mainString.font = [UIFont systemFontOfSize:20];
    
    _detailString1.font = [UIFont systemFontOfSize:12];
    
    _detailString2.font = [UIFont systemFontOfSize:12];
    
    _detailString3.font = [UIFont systemFontOfSize:12];
    
    //_btnSet.titleLabel.font = [UIFont systemFontOfSize:14];
    
    _mainString.frame = CGRectMake(160, 0, 200, 30);
    
    _detailString1.frame = CGRectMake(160, 40, 250, 20);
    
    _detailString2.frame = CGRectMake(160, 60, 250, 20);
    
    _detailString3.frame = CGRectMake(160, 80, 250, 20);
    
    
    
    _btn1.frame = CGRectMake(160, 100, 70, 20);
    
    _btn2.frame = CGRectMake(240, 100, 70, 20);
    
    _btn3.frame = CGRectMake(320, 100, 70, 20);
    
    _image.frame = CGRectMake(0, 0, 150, 120);
    
    [_btn1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [_btn2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [_btn3 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
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
