//
//  ZDTaskCollectionViewCell.m
//  Doing
//
//  Created by Zane on 15/5/12.
//  Copyright (c) 2015年 Zane. All rights reserved.
//

#import "ZDTaskCollectionViewCell.h"
#import "ZDTask.h"

@interface ZDTaskCollectionViewCell()

@property (weak, nonatomic) IBOutlet UILabel *taskName;

@property (weak, nonatomic) IBOutlet UILabel *taskSurplusTime;

@end

@implementation ZDTaskCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
    NSTimer *time = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(changeTime) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:time forMode:NSRunLoopCommonModes];
}

- (void)setModel:(ZDTask *)model
{
    if (_model != model)
    {
        _model = model;
        [self configurationOfCell];
    }
}

- (void)configurationOfCell
{
    _taskName.text = _model.taskName;
    _taskSurplusTime.text = [NSString stringWithFormat:@"任务剩余时间:%@",_model.surplusTime];
}

- (void)changeTime
{
    _taskSurplusTime.text = [NSString stringWithFormat:@"任务剩余时间:%@",_model.surplusTime];
}

@end
