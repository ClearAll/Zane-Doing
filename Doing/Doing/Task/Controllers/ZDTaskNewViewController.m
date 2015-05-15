//
//  ZDTaskNewViewController.m
//  Doing
//
//  Created by Zane on 15/5/13.
//  Copyright (c) 2015年 Zane. All rights reserved.
//

#import "ZDTaskNewViewController.h"
#import <Masonry/Masonry.h>

@interface ZDTaskNewViewController ()
@property (weak, nonatomic) IBOutlet UITextField *taskNameField;
@property (weak, nonatomic) IBOutlet UITextView *taskDescriptionView;
@property (weak, nonatomic) IBOutlet UIDatePicker *taskDatePicker;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *datePickerBottomConstraint;

@end

@implementation ZDTaskNewViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.tabBarController.tabBar.hidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    self.tabBarController.tabBar.hidden = NO;
    [self.view mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didClickBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
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
