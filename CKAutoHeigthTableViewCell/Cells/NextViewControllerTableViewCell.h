//
//  NextViewControllerTableViewCell.h
//  test
//
//  Created by  泛达 on 16/4/6.
//  Copyright © 2016年 FD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextViewControllerTableViewCell : UITableViewCell

@property (nonatomic,strong) UILabel *contentLabel;

+ (instancetype)tableViewCellWithTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath;

@end
