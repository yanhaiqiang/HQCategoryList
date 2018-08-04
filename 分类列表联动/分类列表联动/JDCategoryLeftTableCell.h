//
//  JDCategoryLeftTableCell.h
//  分类列表联动
//
//  Created by yifo on 2018/8/3.
//  Copyright © 2018年 yanhaiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JDCategoryLeftTableCell : UITableViewCell
+ (instancetype)cellWithTableView:(UITableView *)tabelView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *leftLine;
@end
