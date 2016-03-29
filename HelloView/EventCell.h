//
//  EventCell.h
//  HelloView
//
//  Created by Максим Зиноватный on 28.03.16.
//  Copyright © 2016 Максим Зиноватный. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"
@interface EventCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelCityName;
@property (weak, nonatomic) IBOutlet UILabel *labelData;
@property (weak, nonatomic) IBOutlet UILabel *labelParticipants;
- (void) populateCellWithEvent: (Event*) e;
@end
