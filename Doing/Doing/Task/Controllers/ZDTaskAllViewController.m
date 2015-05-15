//
//  ZDTaskAllViewController.m
//  Doing
//
//  Created by Zane on 15/5/12.
//  Copyright (c) 2015年 Zane. All rights reserved.
//

#import "ZDTaskAllViewController.h"
#import "ZDTaskCollectionViewCell.h"
#import "ZDTask.h"

static NSString *cellIdentifier = @"listCell";

@interface ZDTaskAllViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong) NSMutableArray *tasks;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ZDTaskAllViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    dispatch_async(dispatch_get_main_queue(), ^
    {
        for (int idx = 0; idx < 100; idx++)
        {
            ZDTask *task = [[ZDTask alloc] init];
            task.taskName = [NSString stringWithFormat:@"这是任务%d",idx+1];
            task.expectFinishedAt = [NSDate dateWithTimeIntervalSinceNow:1789 + idx * 10];
            [self.tasks addObject:task];
        }
        [self.collectionView reloadData];
    });
    

    [_collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([ZDTaskCollectionViewCell class]) bundle:nil]forCellWithReuseIdentifier:cellIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _tasks.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ZDTaskCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.model = _tasks[indexPath.row];
    return cell;
}

#pragma mark - Getter
- (NSMutableArray *)tasks
{
    if (!_tasks)
    {
        _tasks = [NSMutableArray arrayWithCapacity:0];
    }
    return _tasks;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
