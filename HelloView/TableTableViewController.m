//
//  TableTableViewController.m
//  HelloView
//
//  Created by Максим Зиноватный on 24.03.16.
//  Copyright © 2016 Максим Зиноватный. All rights reserved.
//

#import "TableTableViewController.h"
#import "ViewController.h"
#import "Event.h"
#import "EventCell.h"
@interface TableTableViewController ()

@end

@implementation TableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)loadView {
    [super loadView];
    
    self.collectionWithEvents = [[NSMutableArray alloc] init];
    [self creatEventStack];
    [self.eventsTableView reloadData];
    
}

#pragma mark - Sample protocol delegate
-(void)processCompleted: (Event*) i {

    [self.collectionWithEvents addObject: i];
    [self.eventsTableView reloadData];
    
}

- (void) creatEventStack
{
    Event* head1 = [[Event alloc] init];
    head1.cityName = @"Madrid";
    head1.date = [NSDate dateWithTimeIntervalSince1970:2];
    head1.participants = 9;
    head1.isCool = 1;
    [self.collectionWithEvents addObject:head1];
    
    Event* head2 = [[Event alloc] init];
    head2.cityName = @"London";
    head2.date = [NSDate dateWithTimeIntervalSince1970:1234];
    head2.participants = 123;
    head2.isCool = 0;
    [self.collectionWithEvents addObject:head2];
    
    Event* head3 = [[Event alloc] init];
    head3.cityName = @"Paris";
    head3.date = [NSDate dateWithTimeIntervalSince1970:44];
    head3.participants = 1;
    head3.isCool = 1;
    [self.collectionWithEvents addObject:head3];
    
    Event* head4 = [[Event alloc] init];
    head4.cityName = @"Kiew";
    head4.date = [NSDate dateWithTimeIntervalSince1970:0];
    head4.participants = 500;
    head4.isCool = 0;
    [self.collectionWithEvents addObject:head4];
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    ViewController* destination = segue.destinationViewController;
   
    destination.delegate = self;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.collectionWithEvents count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"a";
    
    EventCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    
    Event* e = [self.collectionWithEvents objectAtIndex: indexPath.row];
    
    [cell populateCellWithEvent:e];

    
    return cell;
    
}



@end
