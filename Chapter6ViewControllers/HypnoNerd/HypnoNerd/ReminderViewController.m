//
//  ReminderViewController.m
//  HypnoNerd
//
//  Created by Edgar Adrián on 4/27/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

#import "ReminderViewController.h"
#import <UserNotifications/UserNotifications.h>

@implementation ReminderViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"ReminderViewController loaded its view");
    UITabBarItem *tbi = self.tabBarItem;
    
    tbi.title = @"Reminder";
    
    UIImage *i = [UIImage imageNamed:@"Time.png"];
    tbi.image = i;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}

-(IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    
    UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"Hypnosis"
                                                          arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Hypnotize me!"
                                                         arguments:nil];
    content.sound = [UNNotificationSound defaultSound];
    
    UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:3 repeats:NO];
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:@"MyFirstRequest" content:content trigger:trigger];
    
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    [center addNotificationRequest:request withCompletionHandler:nil];
    
}//addReminder

@end
