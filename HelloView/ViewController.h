//
//  ViewController.h
//  HelloView
//
//  Created by Максим Зиноватный on 17.03.16.
//  Copyright © 2016 Максим Зиноватный. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"
@protocol SampleProtocolDelegate <NSObject>
@required
- (void) processCompleted:(Event*)i;
@end

@interface ViewController : UIViewController <UITextFieldDelegate>

//@property (strong, nonatomic) TableTableViewController* tableViewController;

@property (nonatomic, weak) id<SampleProtocolDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITextField *cityNameTextField;

@property (weak, nonatomic) IBOutlet UIDatePicker *dateDatePicker;

@property (weak, nonatomic) IBOutlet UIStepper *participantsStepper;
@property (weak, nonatomic) IBOutlet UILabel *participantsLabel;

@property (weak, nonatomic) IBOutlet UISwitch *isCoolSwitch;



@property (strong, nonatomic) IBOutlet UIButton *addEventButton;




@end

