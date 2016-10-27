//
//  FRFirstHeaderTableViewCell.m
//  babyTabDemo
//
//  Created by sonny on 16/10/27.
//  Copyright © 2016年 sonny. All rights reserved.
//

#import "FRFirstHeaderTableViewCell.h"


// 头像的
@implementation FRFirstHeaderTableViewCell


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
}

- (void)viewInstance {
    
    _label = [UILabel new];
    _label.font = [UIFont systemFontOfSize:kTitleFont];
    //    _label.textColor = QWColor;
    [self.contentView addSubview:_label];
    [_label makeConstraints:^(MASConstraintMaker *make) {
        make.top.and.bottom.equalTo(self.contentView);
        make.left.equalTo(self.contentView).offset(16);
        make.height.equalTo(100);
    }];
    
    UIImageView *img = [UIImageView new];
    [img.layer setCornerRadius:25];
    [img.layer setBorderColor:[UIColor grayColor].CGColor];
    [img.layer setBorderWidth:0.5];
    
    [self.contentView addSubview:img];
    [img makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(_label);
        make.size.equalTo(CGSizeMake(50, 50));
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
