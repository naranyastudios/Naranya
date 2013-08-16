//
//  SideMenuViewController.m
//  Naranya
//
//  Created by Gerardo Robles on 8/15/13.
//  Copyright (c) 2013 Gerardo Robles. All rights reserved.
//

#import "SideMenuViewController.h"
#import "ViewController.h"
#import "TeamsViewController.h"
#import "Team.h"

@interface SideMenuViewController ()

@end

@implementation SideMenuViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView setScrollEnabled:NO];
    [self.tableView setBackgroundColor:[UIColor grayColor]];
    [self.tableView setSeparatorColor:[UIColor lightGrayColor]];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    previousView = 0;
    menuOptions = @[@"Inicio",
                    @"MLB",
                    @"MLS",
                    @"NBA",
                    @"NFL"];
    data = @{@"MLB": @[[Team teamWithDictionary:@{@"name": @"Boston", @"wikipedia": @"http://es.wikipedia.org/wiki/Boston_Red_Sox"}],
                       [Team teamWithDictionary:@{@"name": @"Tampa Bay", @"wikipedia": @"http://es.wikipedia.org/wiki/Tampa_Bay_Rays"}],
                       [Team teamWithDictionary:@{@"name": @"Baltimore", @"wikipedia": @"http://es.wikipedia.org/wiki/Baltimore_Orioles"}],
                       [Team teamWithDictionary:@{@"name": @"NY Yankees", @"wikipedia": @"http://es.wikipedia.org/wiki/New_York_Yankees"}],
                       [Team teamWithDictionary:@{@"name": @"Toronto", @"wikipedia": @"http://es.wikipedia.org/wiki/Toronto_Blue_Jays"}],
                       [Team teamWithDictionary:@{@"name": @"Detroit", @"wikipedia": @"http://es.wikipedia.org/wiki/Detroit_Tigers"}],
                       [Team teamWithDictionary:@{@"name": @"Cleveland", @"wikipedia": @"http://es.wikipedia.org/wiki/Cleveland_Indians"}],
                       [Team teamWithDictionary:@{@"name": @"Kansas City", @"wikipedia": @"http://es.wikipedia.org/wiki/Kansas_City_Royals"}],
                       [Team teamWithDictionary:@{@"name": @"Minesota", @"wikipedia": @"http://es.wikipedia.org/wiki/Minnesota_Twins"}],
                       [Team teamWithDictionary:@{@"name": @"Chicago White Sox", @"wikipedia": @"http://es.wikipedia.org/wiki/Chicago_White_Sox"}]],
             @"MLS": @[[Team teamWithDictionary:@{@"name": @"Sporting Kansas City", @"wikipedia": @"http://es.wikipedia.org/wiki/Sporting_Kansas_City"}],
                       [Team teamWithDictionary:@{@"name": @"New York Red Bulls", @"wikipedia": @"http://es.wikipedia.org/wiki/New_York_Red_Bulls"}],
                       [Team teamWithDictionary:@{@"name": @"Philadelphia Union", @"wikipedia": @"http://es.wikipedia.org/wiki/Philadelphia_Union"}],
                       [Team teamWithDictionary:@{@"name": @"Montreal Impact", @"wikipedia": @"http://es.wikipedia.org/wiki/Montreal_Impact"}],
                       [Team teamWithDictionary:@{@"name": @"Houston Dynamo", @"wikipedia": @"http://es.wikipedia.org/wiki/Houston_Dynamo"}],
                       [Team teamWithDictionary:@{@"name": @"Chicago Fire", @"wikipedia": @"http://es.wikipedia.org/wiki/Chicago_Fire"}],
                       [Team teamWithDictionary:@{@"name": @"New England Revolution", @"wikipedia": @"http://es.wikipedia.org/wiki/New_England_Revolution"}],
                       [Team teamWithDictionary:@{@"name": @"Columbus Crew", @"wikipedia": @"http://es.wikipedia.org/wiki/Columbus_Crew"}],
                       [Team teamWithDictionary:@{@"name": @"Toronto FC", @"wikipedia": @"http://es.wikipedia.org/wiki/Toronto_FC"}],
                       [Team teamWithDictionary:@{@"name": @"D.C. United", @"wikipedia": @"http://es.wikipedia.org/wiki/D.C._United"}]],
             @"NBA": @[[Team teamWithDictionary:@{@"name": @"Miami", @"wikipedia": @"http://es.wikipedia.org/wiki/Miami_Heat"}],
                       [Team teamWithDictionary:@{@"name": @"New York", @"wikipedia": @"http://es.wikipedia.org/wiki/New_York_Knicks"}],
                       [Team teamWithDictionary:@{@"name": @"Indiana", @"wikipedia": @"http://es.wikipedia.org/wiki/Indiana_Pacers"}],
                       [Team teamWithDictionary:@{@"name": @"Brooklyn", @"wikipedia": @"http://es.wikipedia.org/wiki/Brooklyn_Nets"}],
                       [Team teamWithDictionary:@{@"name": @"Chicago", @"wikipedia": @"http://es.wikipedia.org/wiki/Chicago_Bulls"}],
                       [Team teamWithDictionary:@{@"name": @"Atlanta", @"wikipedia": @"http://es.wikipedia.org/wiki/Atlanta_Hawks"}],
                       [Team teamWithDictionary:@{@"name": @"Boston", @"wikipedia": @"http://es.wikipedia.org/wiki/Boston_Celtics"}],
                       [Team teamWithDictionary:@{@"name": @"Milwaukee", @"wikipedia": @"http://es.wikipedia.org/wiki/Milwaukee_Bucks"}],
                       [Team teamWithDictionary:@{@"name": @"Philadelphia", @"wikipedia": @"http://es.wikipedia.org/wiki/Philadelphia_76ers"}],
                       [Team teamWithDictionary:@{@"name": @"Toronto", @"wikipedia": @"http://es.wikipedia.org/wiki/Toronto_Raptors"}]],
             @"NFL": @[[Team teamWithDictionary:@{@"name": @"Baltimore Ravens", @"wikipedia": @"http://es.wikipedia.org/wiki/Baltimore_Ravens"}],
                       [Team teamWithDictionary:@{@"name": @"Houston Texans", @"wikipedia": @"http://es.wikipedia.org/wiki/Houston_Texans"}],
                       [Team teamWithDictionary:@{@"name": @"New York Jets", @"wikipedia": @"http://es.wikipedia.org/wiki/New_York_Jets"}],
                       [Team teamWithDictionary:@{@"name": @"San Diego Chargers", @"wikipedia": @"http://es.wikipedia.org/wiki/San_Diego_Chargers"}],
                       [Team teamWithDictionary:@{@"name": @"Indianapolis Colts", @"wikipedia": @"http://es.wikipedia.org/wiki/Indianapolis_Colts"}],
                       [Team teamWithDictionary:@{@"name": @"Jacksonville Jaguars", @"wikipedia": @"http://es.wikipedia.org/wiki/Jacksonville_Jaguars"}],
                       [Team teamWithDictionary:@{@"name": @"Kansas City Chiefs", @"wikipedia": @"http://es.wikipedia.org/wiki/Oakland_Raiders"}],
                       [Team teamWithDictionary:@{@"name": @"Oakland Raiders", @"wikipedia": @"http://es.wikipedia.org/wiki/Oakland_Raiders"}],
                       [Team teamWithDictionary:@{@"name": @"Miami Dolphins", @"wikipedia": @"http://es.wikipedia.org/wiki/Miami_Dolphins"}],
                       [Team teamWithDictionary:@{@"name": @"New England Patriots", @"wikipedia": @"http://es.wikipedia.org/wiki/New_England_Patriots"}]]};
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [menuOptions count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    
    // Configure the cell...
    [[cell textLabel] setText:[menuOptions objectAtIndex:[indexPath row]]];
    
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger rowSelected = indexPath.row;
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (previousView != rowSelected) {
        id viewController;
        NSDictionary *values;
        NSArray *teams;
        
        switch (rowSelected) {
            case 0: {
                viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
            } break;
            case 1: case 2: case 3: case 4: {
                teams = [data objectForKey:[menuOptions objectAtIndex:rowSelected]];
                viewController = [[TeamsViewController alloc] initWithNibName:@"TeamsViewController" bundle:nil];
            } break;
            default:
                break;
        }
        
        if ([viewController respondsToSelector:@selector(setValues:)]) {
            values = @{@"title": [menuOptions objectAtIndex:rowSelected],
                       @"teams": teams};
            [viewController setValues:[values copy]];
        }
        
        previousView = rowSelected;
        self.sideMenu.navigationController.viewControllers = @[viewController];
    }
    
    [self.sideMenu setMenuState:MFSideMenuStateClosed];
}

#pragma mark - UINavigationControllerDelegate



@end
