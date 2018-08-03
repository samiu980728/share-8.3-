//
//  FuSecondCollectionViewCell.m
//  share
//
//  Created by 萨缪 on 2018/7/29.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "FuSecondCollectionViewCell.h"

@implementation FuSecondCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if ( self ){
        _image = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
        _image.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:_image];
    }
    return self;
}


@end
