//
//  ZDTask.m
//  Doing
//
//  Created by Zane on 15/5/12.
//  Copyright (c) 2015年 Zane. All rights reserved.
//

#import "ZDTask.h"

@implementation ZDTask

- (NSString *)spendTime
{
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond fromDate:_createdAt toDate:[NSDate date] options:0];
    NSString *time = @"";
    if (dateComponents)
    {
        if (dateComponents.month > 0)
        {
            time = [NSString stringWithFormat:@"%ld月%ld天%ld时%ld分%ld秒",(long)dateComponents.month,(long)dateComponents.day,(long)dateComponents.hour,(long)dateComponents.minute,(long)dateComponents.second];
        }
        else if (dateComponents.day > 0)
        {
            time = [NSString stringWithFormat:@"%ld天%ld时%ld分%ld秒",(long)dateComponents.day,(long)dateComponents.hour,(long)dateComponents.minute,(long)dateComponents.second];
        }
        else if (dateComponents.hour > 0)
        {
            time = [NSString stringWithFormat:@"%ld时%ld分%ld秒",(long)dateComponents.hour,(long)dateComponents.minute,(long)dateComponents.second];
        }
    }
    return time;
}

- (NSString *)surplusTime
{
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond fromDate:[NSDate date] toDate:_expectFinishedAt options:0];
    NSString *time = @"";
    if (dateComponents)
    {
        if (dateComponents.month > 0)
        {
            time = [NSString stringWithFormat:@"%ld月%ld天%ld时%ld分%ld秒",(long)dateComponents.month,(long)dateComponents.day,(long)dateComponents.hour,(long)dateComponents.minute,(long)dateComponents.second];
        }
        else if (dateComponents.day > 0)
        {
            time = [NSString stringWithFormat:@"%ld天%ld时%ld分%ld秒",(long)dateComponents.day,(long)dateComponents.hour,(long)dateComponents.minute,(long)dateComponents.second];
        }
        else if (dateComponents.hour > 0)
        {
            time = [NSString stringWithFormat:@"%ld时%ld分%ld秒",(long)dateComponents.hour,(long)dateComponents.minute,(long)dateComponents.second];
        }
    }
    return time;
}

@end
