//
//  NextViewControllerTableViewCell.m
//  test
//
//  Created by  泛达 on 16/4/6.
//  Copyright © 2016年 FD. All rights reserved.
//

#import "NextViewControllerTableViewCell.h"

static UIEdgeInsets const kPadding = {10, 15, 10,15};

@interface NextViewControllerTableViewCell()



@end

@implementation NextViewControllerTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma life cycle
+ (instancetype)tableViewCellWithTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {

    static NSString *identifier = @"cell";
    NextViewControllerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[NextViewControllerTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self setUpSubviews];
        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.edges.equalTo(self.contentView).with.insets(kPadding);
        }];
    }
    return self;
}

#pragma mark - private method

- (void)setUpSubviews {

    [self.contentView addSubview:self.contentLabel];
}

- (UILabel *)contentLabel {

    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.numberOfLines = 0;
    }
    return _contentLabel;
}


@end
