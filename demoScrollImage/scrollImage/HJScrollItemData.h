//
//  HJScrollItemData.h
//  HJScrollImage
//
//  Created by hoojack on 15/8/8.
//  Copyright (c) 2015年 hoojack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HJScrollItemData : NSObject

@property (nonatomic, assign) NSUInteger index;
@property (nonatomic, copy) NSString* imageName;
@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* desc;

@end
