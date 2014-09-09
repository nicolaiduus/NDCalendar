//
//  NDViewController.m
//  NDCalendar
//
//  Created by DMU-24 on 05/09/14.
//  Copyright (c) 2014 DMU-24. All rights reserved.
//

#import "NDViewController.h"

@interface NDViewController ()

@end

@implementation NDViewController

- (void)viewDidLoad
{
    
    
    MDCalendar *calendarView = [[MDCalendar alloc] init];
    
    calendarView.backgroundColor = [UIColor whiteColor];
    
    calendarView.lineSpacing = 0.f;
    calendarView.itemSpacing = 0.0f;
    calendarView.borderColor = [UIColor mightySlate];
    calendarView.borderHeight = 1.f;
    calendarView.showsBottomSectionBorder = YES;
    
    calendarView.textColor = [UIColor mightySlate];
    calendarView.headerTextColor = [UIColor mightySlate];
    calendarView.weekdayTextColor = [UIColor grandmasPillow];
    calendarView.cellBackgroundColor = [UIColor whiteColor];
    
    calendarView.highlightColor = [UIColor pacifica];
    calendarView.indicatorColor = [UIColor colorWithWhite:0.85 alpha:1.0];
    
    NSDate *startDate = [NSDate date];
    NSDate *endDate = [startDate dateByAddingMonths:12*25];
    
    calendarView.startDate = startDate;
    calendarView.endDate = endDate;
    calendarView.delegate = self;
    calendarView.canSelectDaysBeforeStartDate = NO;
    
    [self.secondView addSubview:calendarView];
   self.calendarView = calendarView;
    
    
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    _calendarView.frame = self.secondView.bounds;
    _calendarView.contentInset = UIEdgeInsetsMake([self.topLayoutGuide length], 0, [self.bottomLayoutGuide length], 0);
}

#pragma mark - MDCalendarViewDelegate

- (void)calendarView:(MDCalendar *)calendarView didSelectDate:(NSDate *)date {
    NSLog(@"Selected Date: %@", [date descriptionWithLocale:[NSLocale currentLocale]]);
}

- (BOOL) calendarView:(MDCalendar *)calendarView shouldShowIndicatorForDate:(NSDate *)date
{
    // show indicator for every 4th day
    return [date day] % 4 == 1;
}

@end
