//
//  ViewController.m
//  QuizObjectiveC
//
//  Created by Edgar Adrián on 4/23/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation ViewController

- (IBAction)showQuestion:(id)sender
{
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    NSString *question = self.questions[self.currentQuestionIndex];
    
    self.questionLabel.text = question;
    
    self.answerLabel.text = @"???";
    
}//showquestion

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
    
}//showAnswer

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    if (self) {
        
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?"
                           ];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"
                         ];
        
    }//if self
    
}//viewDidLoad


@end
