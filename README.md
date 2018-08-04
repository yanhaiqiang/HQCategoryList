# HQCategoryList

![image](https://github.com/yanhaiqiang/HQCategoryList/blob/master/image.png)
分类页列表联动效果，左边tableView，右边collectionView，右边实现整页滚动


刚开始拿到这样的需求的时候我首先想到的是使用两个tableView，在尝试玩后发现，tableView并没有整页滚动的方法。于是想到了使用collectionView,是每个item实现整页滚动，然后每个item里面再添加一个collectionnView，完美完成了产品给我的需求。幸好这个功能比根据手机壳改变背景色有容易一些，不然我也得和产品去一决高下了。

设置  pagingEnabled = YES; 这个属性可实现collectionView整页滚动效果


当点击左边的tabelViewCell时，让右边的collectionView滑动到相应的cell上

[weakSelf.rightView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredVertically animated:YES];

当滑动右边的collectionView时，让tableView选中当前的cell
这个需要监听collecionView活动的代理方法，也就是scrollView滑动结束的方法
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    在此方法中将当前滑动到了哪个cell传递给左边的tableView，然后刷新tableView即可
}

