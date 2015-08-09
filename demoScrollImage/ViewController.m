//
//  ViewController.m
//  demoScrollImage
//
//  Created by hoojack on 15/8/9.
//  Copyright (c) 2015年 hoojack. All rights reserved.
//

#import "ViewController.h"
#import "HJScrollImage.h"

@interface ViewController ()
@property (nonatomic, weak) HJScrollImage* scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
