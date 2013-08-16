//
//  TeamsViewController.h
//  Naranya
//
//  Created by Gerardo Robles on 8/15/13.
//  Copyright (c) 2013 Gerardo Robles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TeamsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    NSDictionary *values;
    NSArray *teams;
    
}

@property (copy) NSDictionary *values;

@end
