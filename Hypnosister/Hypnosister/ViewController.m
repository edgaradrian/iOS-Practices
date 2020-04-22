//
//  ViewController.m
//  Hypnosister
//
//  Created by Edgar Adrián on 4/25/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

#import "ViewController.h"
#import "HypnosisView.h"


@interface ViewController ()

@end

@implementation ViewController

-(void)loadView
{
    HypnosisView *backgroundView = [[HypnosisView alloc] init];
    
    self.view = backgroundView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
