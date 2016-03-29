//
//  ViewController.m
//  HelloView
//
//  Created by Максим Зиноватный on 17.03.16.
//  Copyright © 2016 Максим Зиноватный. All rights reserved.
//

#import "ViewController.h"
#import "Event.h"
#import "TableTableViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.addEventButton.backgroundColor = [UIColor yellowColor];
    [self.addEventButton addTarget:self
                            action:@selector(addEventClicked:)
            forControlEvents:UIControlEventTouchUpInside];

    [self.participantsStepper addTarget:self
                                 action:@selector(updateParticipantsCount:)
                       forControlEvents:UIControlEventTouchUpInside];
    
    

    
}


- (Event*) creatEvent
{
    
    
    Event* event = [[Event alloc] init];
    event.cityName  = [self.cityNameTextField text];
    event.date = self.dateDatePicker.date;
    event.participants = self.participantsStepper.value;
    event.isCool = self.isCoolSwitch.on;
    return event;
}


- (void) addEventClicked:(UIButton*) button
{
    Event* e = [self creatEvent];


    
    [self.delegate processCompleted: e];

    [self.navigationController popViewControllerAnimated:YES];
    
    NSLog(@"%ld", (long)e.participants);
    NSLog(e.isCool ? @"YES": @"NO");
    NSLog(@"%@", e.date);
}

- (void) updateParticipantsCount: (UIStepper*) stepper
{
    self.participantsLabel.text = [NSString stringWithFormat:@"%ld", (long)stepper.value];
}








@end
