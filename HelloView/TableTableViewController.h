//
//  TableTableViewController.h
//  HelloView
//
//  Created by Максим Зиноватный on 24.03.16.
//  Copyright © 2016 Максим Зиноватный. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface TableTableViewController : UITableViewController <SampleProtocolDelegate>

@property (strong, nonatomic) IBOutlet UITableView *eventsTableView;
@property (strong, nonatomic) NSMutableArray* collectionWithEvents;
@end
