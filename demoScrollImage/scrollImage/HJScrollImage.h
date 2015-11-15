//
//  HJScrollImage.h
//  HJScrollImage
//
//  Created by hoojack on 15/8/8.
//  Copyright (c) 2015年 hoojack. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HJScrollItemData.h"

@class HJScrollImage;
@protocol HJScrollImageDelegate <NSObject>
@optional
- (void)HJScrollImage:(HJScrollImage*)scrollImage didSelectItem:(HJScrollItemData*)itemData;
@end

@interface HJScrollImage : UIView

@property (nonatomic, strong) NSArray* datas;
@property (nonatomic, weak) id<HJScrollImageDelegate> delegate;

- (void)start;
- (void)stop;

@end
