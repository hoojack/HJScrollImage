//
//  HJScrollItem.h
//  HJScrollImage
//
//  Created by hoojack on 15/8/8.
//  Copyright (c) 2015年 hoojack. All rights reserved.
//
#import <UIKit/UIKit.h>

@class HJScrollItemData;
@protocol HJScrollItemDelegate <NSObject>
@required
- (void)didSelectItem:(HJScrollItemData*)data;
@end

@interface HJScrollItem : UIView

@property (nonatomic, strong) HJScrollItemData* data;
@property (nonatomic, weak) id<HJScrollItemDelegate> delegate;

@end
