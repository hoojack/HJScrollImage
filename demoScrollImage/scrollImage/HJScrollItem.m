//
//  HJScrollItem.m
//  HJScrollImage
//
//  Created by hoojack on 15/8/8.
//  Copyright (c) 2015年 hoojack. All rights reserved.
//

#import "HJScrollItem.h"
#import "HJScrollItemData.h"

@interface HJScrollItem()

@property (nonatomic, weak) UIImageView* imageView;
@property (nonatomic, weak) UIView* titleBkg;
@property (nonatomic, weak) UILabel* lblTitle;
@property (nonatomic, weak) UILabel* lblDesc;

@end

@implementation HJScrollItem

- (instancetype)init
{
    if (self = [super init])
    {
        [self initSubViews];
    }
    return self;
}

- (void)initSubViews
{
    UIImageView* imageView = [[UIImageView alloc] init];
    [self addSubview:imageView];
    self.imageView = imageView;
    
    UIView* titleBkg = [[UIView alloc] init];
    titleBkg.backgroundColor = [UIColor blackColor];
    titleBkg.alpha = 0.5;
    [self addSubview:titleBkg];
    self.titleBkg = titleBkg;
    
    UILabel* lblTitle = [[UILabel alloc] init];
    lblTitle.textColor = [UIColor whiteColor];
    [self addSubview:lblTitle];
    self.lblTitle = lblTitle;
}

- (void)layoutSubviews
{
    CGFloat itemW = CGRectGetWidth(self.frame);
    CGFloat itemH = CGRectGetHeight(self.frame);
    self.imageView.frame = CGRectMake(0, 0, itemW, itemH);
    CGFloat titleH = 35.0;
    CGRect rcTitle = CGRectMake(0, itemH - titleH, itemW, titleH);
    self.lblTitle.frame = rcTitle;
    self.titleBkg.frame = rcTitle;
}

- (void)setData:(HJScrollItemData *)data
{
    _data = data;
    
    self.imageView.image = [UIImage imageNamed:self.data.imageName];
    self.lblTitle.text = [NSString stringWithFormat:@"  %@", self.data.title];
}

@end
