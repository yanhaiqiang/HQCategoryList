//
//  JDCategoryLeftTableCell.m
//  分类列表联动
//
//  Created by yifo on 2018/8/3.
//  Copyright © 2018年 yanhaiqiang. All rights reserved.
//

#import "JDCategoryLeftTableCell.h"

@interface JDCategoryLeftTableCell ()


@end

@implementation JDCategoryLeftTableCell
+ (instancetype)cellWithTableView:(UITableView *)tabelView {
    static NSString *ID = @"JDCategoryLeftTableCell";
    JDCategoryLeftTableCell *cell = [tabelView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self creatSubViews];
    }
    return self;
}
- (void)creatSubViews {
    
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(3, 0, 100, 45)];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel = titleLabel;
//    titleLabel.backgroundColor = [UIColor redColor];
    titleLabel.font = [UIFont systemFontOfSize:15 weight:UIFontWeightSemibold];
    [self.contentView addSubview:titleLabel];
    
    UIView *leftLine = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 3, 25)];
    leftLine.backgroundColor = [UIColor blackColor];
        leftLine.hidden = YES;
    self.leftLine = leftLine;
    [self addSubview:leftLine];
}




@end
