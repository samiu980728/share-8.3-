//
//  JPXFuFirstTableViewCell.m
//  share
//
//  Created by 萨缪 on 2018/7/28.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "JPXFuFirstTableViewCell.h"

@implementation JPXFuFirstTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ( self ){
        _image1 = [[UIImageView alloc] init];
        _image2 = [[UIImageView alloc] init];
        _image3 = [[UIImageView alloc] init];
        _image4 = [[UIImageView alloc] init];
        _image5 = [[UIImageView alloc] init];
        
        _imageCell1 = [[UIImageView alloc] init];
        
        _mainString = [[UILabel alloc] init];
        
        _detailString1 = [[UILabel alloc] init];
        
        _detailString2 = [[UILabel alloc] init];
        
        _detailString3 = [[UILabel alloc] init];
        
        _btn1 = [[UIButton alloc] init];
        
        _btn2 = [[UIButton alloc] init];
        
        _btn3 = [[UIButton alloc] init];
        
        
//        [self.contentView addSubview:_image1];
//        [self.contentView addSubview:_image2];
//        [self.contentView addSubview:_image3];
//
//        [self.contentView addSubview:_image4];
//        [self.contentView addSubview:_image5];
        
        [self.contentView addSubview:_imageCell1];
        
        [self.contentView addSubview:_mainString];
        [self.contentView addSubview:_detailString1];
        [self.contentView addSubview:_detailString2];
        //[self.contentView addSubview:_detailString3];
//        [self.contentView addSubview:_btn1];
//
//        [self.contentView addSubview:_btn2];
//        [self.contentView addSubview:_btn3];
//
        
    }
    return self;
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    _imageCell1.frame = CGRectMake(20, 5, 70, 70);
    
    _mainString.frame = CGRectMake(100, 5, 200, 20);
    _mainString.font = [UIFont systemFontOfSize:20];
    
    _mainString.font = [UIFont systemFontOfSize:15];
    
    _detailString1.frame = CGRectMake(320, 5, 250, 15);
    
    _detailString1.font = [UIFont systemFontOfSize:14];
    
    _detailString2.frame = CGRectMake(100, 30, 250, 15);
    
    _detailString2.font = [UIFont systemFontOfSize:15];
    
    //_detailString3.font = [UIFont systemFontOfSize:15];
    
    _detailString3.frame = CGRectMake(0, 0, 300, 25);
    _detailString3.font = [UIFont systemFontOfSize:15];
    
    _image1.frame = CGRectMake(0, 30, [UIScreen mainScreen].bounds.size.width, 280);
    
    _image2.frame = CGRectMake(0, 315, ([UIScreen mainScreen].bounds.size.width), 280);
    
    
    _image3.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width)/4, 600, ([UIScreen mainScreen].bounds.size.width)/2, 300);
    
    _btn1.frame = CGRectMake(150, 50, 30, 30);
    
    _btn2.frame = CGRectMake(200, 50, 30, 30);
    
    _btn3.frame = CGRectMake(250, 50, 30, 30);
    
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
