//
//  ViewController.m
//  Naranya
//
//  Created by Gerardo Robles on 8/15/13.
//  Copyright (c) 2013 Gerardo Robles. All rights reserved.
//

#import "ViewController.h"
#import "MFSideMenu.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self setTitle:@"Naranya"];
    self.navigationItem.leftBarButtonItem = [self leftMenuBarButtonItem];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIBarButtonItem *)leftMenuBarButtonItem {
    return [[UIBarButtonItem alloc]
            initWithImage:[UIImage imageNamed:@"menu-icon.png"] style:UIBarButtonItemStyleBordered
            target:self.navigationController.sideMenu
            action:@selector(toggleLeftSideMenu)];
}

@end
