//
//  ViewController.h
//  Fifth Root
//
//  Created by Sepehr Taheri on 2/28/2014.
//  Copyright (c) 2014 SEPEHR.CA. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSInteger finalDiceRoll;


int finalDiceRoll = 0;


@interface ViewController : UIViewController{
    IBOutlet UILabel *FifthTextBox;
    IBOutlet UIButton *FifthCheckButton;
}

@property (strong, nonatomic) IBOutlet UILabel *FifthTextBox;

@property (strong, nonatomic) IBOutlet UIButton *FifthCheckButton;

@property (strong, nonatomic) IBOutlet UILabel *FifthLabel;

@property (strong, nonatomic) IBOutlet UILabel *AnswerLabel;


- (IBAction)button1:(id)sender;
- (IBAction)button2:(id)sender;
- (IBAction)button3:(id)sender;
- (IBAction)button4:(id)sender;
- (IBAction)button5:(id)sender;
- (IBAction)button6:(id)sender;
- (IBAction)button7:(id)sender;
- (IBAction)button8:(id)sender;
- (IBAction)button9:(id)sender;
- (IBAction)button0:(id)sender;
- (IBAction)FifthCheckbutton:(id)sender;
- (IBAction)buttonC:(id)sender;



@end
