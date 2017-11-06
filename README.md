# TableLinkageDemo
列表的联动的demo，左侧是tableview，右侧是collectionView
<p>这是效果图：</p>
![效果图](https://github.com/ZJQian/TableLinkageDemo/blob/master/tableLinkage.gif)

<p>其实原理很简单，就是左侧放一个tableview，右侧放一个collectionView（也可以是tableview），只要搞清楚点击表，或者滑动collection的时候，另一个做出相应的效果来就好了</p>

<p>下面把实现这部分功能的代码贴上</p>

<h2>1.首先是点击tableview的时候，要计算出collectionView要滚动到的位置:</h2>

<p>NSIndexPath *moveToIndexPath = [NSIndexPath indexPathForRow:0 inSection:indexPath.row];</p>
<p>[self.collectionView selectItemAtIndexPath:moveToIndexPath animated:YES scrollPosition:UICollectionViewScrollPositionTop];</p>
<h2>2.然后是滑动collectionView的时候，计算tableview要响应的位置：</h2>
<p>- (void)collectionView:(UICollectionView *)collectionView willDisplaySupplementaryView:(UICollectionReusableView *)view forElementKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)indexPath {

    if ([elementKind isEqualToString:UICollectionElementKindSectionHeader]) {

        if (indexPath.section!=0) {
            NSIndexPath *tabIndexPath = [NSIndexPath indexPathForRow:indexPath.section - 1 inSection:0];
            [self.tableView selectRowAtIndexPath:tabIndexPath animated:YES scrollPosition:UITableViewScrollPositionMiddle];
        }
    }
}
</p>
