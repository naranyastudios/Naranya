//
//  SideMenuViewController.h
//  Naranya
//
//  Created by Gerardo Robles on 8/15/13.
//  Copyright (c) 2013 Gerardo Robles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MFSideMenu.h"

@interface SideMenuViewController : UITableViewController <UINavigationControllerDelegate> {
    NSArray *menuOptions;
    NSInteger previousView;
    
    NSDictionary *data;
}

@property (nonatomic, assign) MFSideMenu *sideMenu;

@end
