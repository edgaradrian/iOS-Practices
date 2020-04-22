//
//  HypnosisViewController.m
//  HypnoNerd
//
//  Created by Edgar Adrián on 4/27/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)loadView
{
    HypnosisView *backgroundView = [[HypnosisView alloc] init];
    
    self.view = backgroundView;
}//loadView

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"HypnosisViewController loaded its view");
    self.tabBarItem.title = @"Hypnotize";
    UIImage *i = [UIImage imageNamed:@"Hypno.png"];
    self.tabBarItem.image = i;
}

@end
