//
//  NDSACAlendarViewController.m
//  NDCalendar
//
//  Created by DMU-24 on 05/09/14.
//  Copyright (c) 2014 DMU-24. All rights reserved.
//

#import "NDSACAlendarViewController.h"

@interface NDSACAlendarViewController ()

@end

@implementation NDSACAlendarViewController

- (void)viewDidLoad
{
    SACalendar *cal = [[SACalendar alloc]initWithFrame:self.secondView.bounds];
    cal.delegate = self;
    [self.secondView addSubview:cal];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
