//
//  ViewController.m
//  ZBBCycleViewDemo
//
//  Created by 张彬彬 on 2017/6/12.
//  Copyright © 2017年 binbintyou. All rights reserved.
//

#import "ViewController.h"
#import "ZBBCycleView.h"
#import "Masonry.h"

@interface ViewController ()

@property (nonatomic, strong) ZBBCycleView *flashView; // 顶部轮播view

@end

@implementation ViewController

#pragma mark - ♻️life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.flashView];
    self.flashView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
    __weak typeof(self) weakSelf = self;
    [self.flashView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(weakSelf.view);
        make.height.mas_equalTo(300);
    }];

    self.flashView.dataSource = @[@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1496933469041&di=5c0f77e9c47025370a8d83aeebba872e&imgtype=0&src=http%3A%2F%2Fwww.liangtupian.com%2Fuploads%2Fmv%2F20150416%2F2015041622073712228.jpg",
                                  @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1496933470203&di=12c9280476a1dd65fd6c170fc3c5525a&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2F3%2Fe9%2F72821378027.jpg",
                                  @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1496933470202&di=139c6281531319f29c90a616f694aed7&imgtype=0&src=http%3A%2F%2Fimage.tianjimedia.com%2FuploadImages%2F2015%2F150%2F35%2F542TBW786509.jpg"];
}

#pragma mark - ☸getter and setter
-(ZBBCycleView *)flashView{
    if (!_flashView) {
        _flashView = [[ZBBCycleView alloc] init];
    }
    
    return _flashView;
}


@end
