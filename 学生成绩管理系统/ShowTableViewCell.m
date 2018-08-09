//
//  ShowTableViewCell.m
//  学生成绩管理系统
//
//  Created by 萨缪 on 2018/8/7.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "ShowTableViewCell.h"

@implementation ShowTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ( self ){
        _label = [[UILabel alloc] init];
        _label1 = [[UILabel alloc] init];
        _label2 = [[UILabel alloc] init];
        _label3 = [[UILabel alloc] init];
        _label4 = [[UILabel alloc] init];
        
        [self.contentView addSubview:_label];
        [self.contentView addSubview:_label1];
        [self.contentView addSubview:_label2];
        [self.contentView addSubview:_label3];
        [self.contentView addSubview:_label4];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _label.frame = CGRectMake(0, 0, 80, 30);
    _label.font = [UIFont systemFontOfSize:15];
    _label.textColor = [UIColor blackColor];
    
    _label1.frame = CGRectMake(82, 0, 80, 30);
    _label1.font = [UIFont systemFontOfSize:15];
    _label1.textColor = [UIColor blackColor];
    
    _label2.frame = CGRectMake(165, 0, 80, 30);
    _label2.font = [UIFont systemFontOfSize:15];
    _label2.textColor = [UIColor blackColor];
    
    _label3.frame = CGRectMake(250, 0, 80, 30);
    _label3.font = [UIFont systemFontOfSize:15];
    _label3.textColor = [UIColor blackColor];
    
    _label4.frame = CGRectMake(330, 0, 80, 30);
    _label4.font = [UIFont systemFontOfSize:15];
    _label4.textColor = [UIColor blackColor];
    
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
