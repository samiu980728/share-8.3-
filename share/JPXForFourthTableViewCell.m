//
//  JPXForFourthTableViewCell.m
//  share
//
//  Created by 萨缪 on 2018/7/30.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "JPXForFourthTableViewCell.h"

@implementation JPXForFourthTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if  (self){
        _image = [[UIImageView alloc] init];
        _label = [[UILabel alloc] init];
        
        [self.contentView addSubview:_image];
        [self.contentView addSubview:_label];
        
    }
    return  self;
    
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _image.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200);
    
    _label.frame = CGRectMake(10, 210, [UIScreen mainScreen].bounds.size.width, 20);
    
    _label.font = [UIFont systemFontOfSize:15];
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
