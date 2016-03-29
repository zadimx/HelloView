//
//  EventCell.m
//  HelloView
//
//  Created by Максим Зиноватный on 28.03.16.
//  Copyright © 2016 Максим Зиноватный. All rights reserved.
//

#import "EventCell.h"
#import "Event.h"
@implementation EventCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) populateCellWithEvent: (Event*) e
{
    self.labelCityName.text = e.cityName;
    
    self.labelData.text = e.date.description;
    
    self.labelParticipants.text =  [NSString stringWithFormat:@"%ld", (long)e.participants];
    
    if (e.isCool == 1) {
        self.backgroundColor = [UIColor greenColor];
    }
    else {
        self.backgroundColor = [UIColor redColor];
    }
}

@end
