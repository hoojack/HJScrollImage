# HJScrollImage
使用UIScrollView轮播图片，实现了无限轮播。


如何使用

1，将 scrollImage 目录及文件引入工程；
2，引用头文件 #import "HJScrollImage.h"
3，代码片段
CGRect rc = CGRectMake(21, 40, 333, 181);
HJScrollImage* scrollView = [[HJScrollImage alloc] initWithFrame:rc];
[self.view addSubview:scrollView];
self.scrollView = scrollView;


NSMutableArray* array = [[NSMutableArray alloc] initWithCapacity:0];
for (int i = 0; i < 8; i++)
{
HJScrollItemData* data = [[HJScrollItemData alloc] init];
data.imageName = [NSString stringWithFormat:@"%d", i + 1];
data.title = [NSString stringWithFormat:@"第 %d 张图片", i + 1];
[array addObject:data];
}
self.scrollView.datas = array;
