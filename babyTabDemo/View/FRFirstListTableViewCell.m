//
//  FRFirstListTableViewCell.m
//  babyTabDemo
//
//  Created by sonny on 16/10/27.
//  Copyright © 2016年 sonny. All rights reserved.
//

#import "FRFirstListTableViewCell.h"

@implementation FRFirstListTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.translatesAutoresizingMaskIntoConstraints = NO;
        [self viewInstance];
    }
    return self;
}

- (void)setDic:(NSDictionary *)dic {
    
    _label.text = [dic objectForKey:@"title"];
    _tipLabel.text = [dic objectForKey:@"tip"];
}



- (void)viewInstance {
    
    _label = [UILabel new];
    _label.font = [UIFont systemFontOfSize:kTitleFont];
    //    _label.textColor = QWColor;
    [self.contentView addSubview:_label];
    [_label makeConstraints:^(MASConstraintMaker *make) {
        make.top.and.bottom.equalTo(self.contentView);
        make.left.equalTo(self.contentView).offset(16);
        make.height.equalTo(50);
    }];
    
    _tipLabel = [UILabel new];
    _tipLabel.font = [UIFont systemFontOfSize:kTipFont];
    _tipLabel.textColor = [UIColor grayColor];
    [self.contentView addSubview:_tipLabel];
    [_tipLabel makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(_label);
        make.right.equalTo(self.contentView).offset(kRightSpace);
    }];
    
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
