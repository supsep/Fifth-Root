//
//  RollDataController.m
//  Fifth Root
//
//  Created by Sepehr Taheri on 2/28/2014.
//  Copyright (c) 2014 SEPEHR.CA. All rights reserved.
//
#import "RollDataController.h"

@implementation RollDataController

- (Roll*)getRoll{
    
    //Create instance of dice roll
    Roll *firstroll = [[Roll alloc] init];
    
    //Random int from 1-100
    firstroll.roll = (arc4random() % 100) + 1;
    return firstroll;
}

@end
