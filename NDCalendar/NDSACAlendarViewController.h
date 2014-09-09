//
//  NDSACAlendarViewController.h
//  NDCalendar
//
//  Created by DMU-24 on 05/09/14.
//  Copyright (c) 2014 DMU-24. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SACalendar.h"

@interface NDSACAlendarViewController : UIViewController <SACalendarDelegate>
@property (weak, nonatomic) IBOutlet UIView *secondView;

@end
