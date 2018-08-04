//
//  ViewController.m
//  分类列表联动
//
//  Created by yifo on 2018/8/3.
//  Copyright © 2018年 yanhaiqiang. All rights reserved.
//

#import "ViewController.h"
#import "JDCategoryLeftTabelView.h"
#import "JDCategoryRightCollectionView.h"


@interface ViewController ()<UIScrollViewDelegate, UICollectionViewDelegate>
@property (nonatomic, strong) JDCategoryLeftTabelView *leftView;
@property (nonatomic, strong) JDCategoryRightCollectionView *rightView;
@property (nonatomic, assign) CGFloat lastContentOffset;
@property (nonatomic, assign) BOOL didEndDecelerating;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightTextColor];
    
    [self setupSubViews];
}


/**
 *思路1
 *使用CollectionView,每个cell添加一个collectionView
 */
#pragma mark -------UI设置-------
- (void)setupSubViews {
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    JDCategoryLeftTabelView *leftView = [[JDCategoryLeftTabelView alloc] initWithFrame:CGRectMake(0, 0, 100, self.view.bounds.size.height) style:UITableViewStylePlain];
    self.leftView = leftView;
    [self.view addSubview:leftView];
    __weak typeof(self) weakSelf = self;
    [leftView setCellSelectedBlock:^(NSIndexPath *indexPath) {
        [weakSelf.rightView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredVertically animated:YES];
    }];
    
//    CGFloat rightWidth = KScreenWidth - 100;
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.minimumLineSpacing = 0;
    flowLayout.minimumInteritemSpacing = 0;
    flowLayout.itemSize = CGSizeMake(KScreenWidth - 100, KScreenHeight - NavigateHeight);
    
    
    JDCategoryRightCollectionView *rightView = [[JDCategoryRightCollectionView alloc] initWithFrame:CGRectMake(101, 0, KScreenWidth - 101, KScreenHeight - NavigateHeight) collectionViewLayout:flowLayout];
    self.rightView = rightView;
    rightView.delegate = self;
    rightView.pagingEnabled = YES;
    [self.view addSubview:rightView];
    
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    self.lastContentOffset = scrollView.contentOffset.y;
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    self.didEndDecelerating = YES;
    // 调用方法A，传scrollView.contentOffset
    [self scrollViewWithScrollView:scrollView];
    NSLog(@"停止滑动");
    CGFloat offsetY = scrollView.contentOffset.y;
    NSLog(@"%f", offsetY);
    CGFloat height = self.rightView.height;
    NSLog(@"高度%f", height);
    NSInteger index = offsetY/height;
//    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:index inSection:0];
//    [self.rightView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionNone animated:YES];
//    [self.leftView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionNone animated:YES];
    self.leftView.selectedRow = index;
}
- (void)scrollViewWithScrollView:(UIScrollView *)scrollView {
    
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    CGFloat offsetY = scrollView.contentOffset.y;
//    NSLog(@"%f", offsetY);
    if (offsetY < _lastContentOffset) {
//        NSLog(@"上");
        
    }else {
//        NSLog(@"下");
    }
}


@end
