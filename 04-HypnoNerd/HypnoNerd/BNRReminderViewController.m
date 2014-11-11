//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by User on 11/1/14.
//  Copyright (c) 2014 BNR. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, weak) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation BNRReminderViewController

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.tabBarItem.title = @"Reminder";
        
        UIImage *image = [UIImage imageNamed:@"Time.png"];
        
        self.tabBarItem.image = image;
    }
    
    return self;
}

- (IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Hypnotize Me!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"BNRReminder VC loaded its view.");
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}

- (IBAction)segmentedControlAction:(id)sender
{
    if (self.segmentedControl.selectedSegmentIndex == 0)
        self.view.backgroundColor = [UIColor redColor];
    else if (self.segmentedControl.selectedSegmentIndex == 1)
        self.view.backgroundColor = [UIColor greenColor];
    else if (self.segmentedControl.selectedSegmentIndex == 2)
        self.view.backgroundColor = [UIColor blueColor];
}

@end
