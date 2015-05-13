//
//  ZDTask.h
//  Doing
//
//  Created by Zane on 15/5/12.
//  Copyright (c) 2015年 Zane. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, TaskState)
{
    /**
     *  进行中
     */
    ZDTaskDoing,
    /**
     *  已完成
     */
    ZDTaskFinished,
    /**
     *  已过期
     */
    ZDTaskExpired,
};

@interface ZDTask : NSObject

/**
 *  任务id
 */
@property (nonatomic, assign) NSInteger taskId;

/**
 *  任务名字
 */
@property (nonatomic, strong) NSString *taskName;

/**
 *  任务描述
 */
@property (nonatomic, strong) NSString *taskDescription;

/**
 *  创建时间
 */
@property (nonatomic, strong) NSDate *createdAt;

/**
 *  更新时间
 */
@property (nonatomic, strong) NSDate *updatedAt;

/**
 *  完成时间
 */
@property (nonatomic, strong) NSDate *finishedAt;

/**
 *  预计完成时间
 */
@property (nonatomic, strong) NSDate *expectFinishedAt;

/**
 *  用时
 */
@property (nonatomic, strong, readonly) NSString *spendTime;

/**
 *  剩余时间
 */
@property (nonatomic, strong, readonly) NSString *surplusTime;

/**
 *  任务状态
 */
@property (nonatomic, assign) TaskState taskState;

@end
