//
//  TeamDetailViewController.h
//  Naranya
//
//  Created by Gerardo Robles on 8/15/13.
//  Copyright (c) 2013 Gerardo Robles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Team.h"

@interface TeamDetailViewController : UIViewController {
    IBOutlet UIWebView *webView;
    Team *team;
}

@property (nonatomic, retain) Team *team;

@end
