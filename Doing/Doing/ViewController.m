//
//  ViewController.m
//  Doing
//
//  Created by Zane on 15/5/12.
//  Copyright (c) 2015年 Zane. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
//    [user setObject:[NSDate date] forKey:@"date"];
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond fromDate:[user objectForKey:@"date"] toDate:[NSDate date] options:0];
    NSLog(@"%@",dateComponents);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
