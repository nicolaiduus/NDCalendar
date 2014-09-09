//
//  NDViewController.h
//  NDCalendar
//
//  Created by DMU-24 on 05/09/14.
//  Copyright (c) 2014 DMU-24. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MDCalendar.h"
#import "NSDate+MDCalendar.h"
#import "UIColor+MDCalendarDemo.h"

@interface NDViewController : UIViewController <MDCalendarDelegate>
@property (weak, nonatomic) IBOutlet UIView *secondView;
@property MDCalendar *calendarView;

@end
