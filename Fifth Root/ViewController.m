//
//  ViewController.m
//  Fifth Root
//
//  Created by Sepehr Taheri on 2/28/2014.
//  Copyright (c) 2014 SEPEHR.CA. All rights reserved.
//
#include <math.h>

#import "ViewController.h"
#import "RollDataController.h"
#import "Roll.h"
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController (){
    NSString *previousanswer;
}
@end

@implementation ViewController

@synthesize FifthTextBox;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
    //Cleanup
    previousanswer = @"";
    FifthTextBox.text = @"";
    
    
    //Create Initial model
    RollDataController *model = [[RollDataController alloc] init];
    Roll *secondroll = [model getRoll];
    
    
    int finalDiceRoll = secondroll.roll;
    double thirdroll = pow(secondroll.roll, 5);
    NSString *fourthroll = [NSString stringWithFormat:@"%d",finalDiceRoll];
    NSString *fifthroll = [NSString stringWithFormat:@"%2.0f",thirdroll];
    
   // self.FifthTestLabel.text = fourthroll;
    self.FifthLabel.text = fifthroll;
    
    previousanswer = [NSString stringWithFormat:@"%@",fourthroll];
}

// Creating buttons
- (IBAction)button1:(id)sender {
        self.FifthTextBox.text=[NSString stringWithFormat:@"%@1",FifthTextBox.text];
}
- (IBAction)button2:(id)sender {
    self.FifthTextBox.text=[NSString stringWithFormat:@"%@2",FifthTextBox.text];
}
- (IBAction)button3:(id)sender {
    self.FifthTextBox.text=[NSString stringWithFormat:@"%@3",FifthTextBox.text];
}
- (IBAction)button4:(id)sender {
    self.FifthTextBox.text=[NSString stringWithFormat:@"%@4",FifthTextBox.text];
}
- (IBAction)button5:(id)sender {
    self.FifthTextBox.text=[NSString stringWithFormat:@"%@5",FifthTextBox.text];
}
- (IBAction)button6:(id)sender {
    self.FifthTextBox.text=[NSString stringWithFormat:@"%@6",FifthTextBox.text];
}
- (IBAction)button7:(id)sender {
    self.FifthTextBox.text=[NSString stringWithFormat:@"%@7",FifthTextBox.text];
}
- (IBAction)button8:(id)sender {
    self.FifthTextBox.text=[NSString stringWithFormat:@"%@8",FifthTextBox.text];
}
- (IBAction)button9:(id)sender {
    self.FifthTextBox.text=[NSString stringWithFormat:@"%@9",FifthTextBox.text];
}
- (IBAction)button0:(id)sender {
    self.FifthTextBox.text=[NSString stringWithFormat:@"%@0",FifthTextBox.text];
}
- (IBAction)buttonC:(id)sender {
    self.FifthTextBox.text=@"";
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
 

}

- (IBAction)HandleCheckButton:(id)sender {
    //Check Answer
    if ( self.FifthTextBox.text.length < 4 == TRUE ){

        if ([self.FifthTextBox.text isEqualToString:previousanswer]) {
            self.AnswerLabel.text = @"CORRECT";
            AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
        }
        else{
            self.AnswerLabel.text = [NSString stringWithFormat:@"INCORRECT - %@",previousanswer];
        }
    
        // Create Model
        RollDataController *model = [[RollDataController alloc] init];
        Roll *secondroll = [model getRoll];
    
        //Int to String Computation
        int finalDiceRoll = secondroll.roll;
        double thirdroll = pow(secondroll.roll, 5);
        NSString *fourthroll = [NSString stringWithFormat:@"%d",finalDiceRoll];
        NSString *fifthroll = [NSNumberFormatter localizedStringFromNumber:@(thirdroll)numberStyle:NSNumberFormatterDecimalStyle];
        self.FifthLabel.text = fifthroll;
    
        //Cleanup
        previousanswer = [NSString stringWithFormat:@"%d",finalDiceRoll];
        FifthTextBox.text = @"";
        
            }
        
          else{
              self.AnswerLabel.text = @"MAX 3 DIGITS";
          }
    }


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.FifthCheckButton resignFirstResponder];
    
}

@end
int finalDiceRoll;