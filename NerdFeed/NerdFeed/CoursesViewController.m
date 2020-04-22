//
//  CoursesViewController.m
//  NerdFeed
//
//  Created by Edgar Adrián on 4/29/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

#import "CoursesViewController.h"

@interface CoursesViewController ()

@property (nonatomic) NSURLSession *session;

@end

@implementation CoursesViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    
    if (self) {
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        _session = [NSURLSession sessionWithConfiguration:config
                                                 delegate:nil
                                            delegateQueue:nil];
    }//if
    
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return 0;
}//numberOfRowsInSection

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}//cellForRowAtIndexPath

@end
