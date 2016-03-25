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

@interface TableTableViewController ()

@end

@implementation TableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionWithEvents = [[NSMutableArray alloc] init];
}

#pragma mark - Sample protocol delegate
-(void)processCompleted: (Event*) i {

    [self.collectionWithEvents addObject: i];
    [self.eventsTableView reloadData];
    
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
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    
    Event* e = [self.collectionWithEvents objectAtIndex: indexPath.row];
    
    cell.textLabel.text = e.cityName;
    
    return cell;
    
}


@end
