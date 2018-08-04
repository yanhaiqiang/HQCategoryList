//
//  JDCategoryLeftTabelView.h
//  分类列表联动
//
//  Created by yifo on 2018/8/3.
//  Copyright © 2018年 yanhaiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JDCategoryLeftTabelView : UITableView
@property (nonatomic, copy  ) void(^CellSelectedBlock)(NSIndexPath *indexPath);
@property (nonatomic, assign) NSInteger selectedRow;
@end
