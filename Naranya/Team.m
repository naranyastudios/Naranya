//
//  Team.m
//  Naranya
//
//  Created by Gerardo Robles on 8/15/13.
//  Copyright (c) 2013 Gerardo Robles. All rights reserved.
//

#import "Team.h"
#import "NSDictionary+Utils.h"

@implementation Team

@synthesize name;
@synthesize wikipedia;

+ (Team *)teamWithDictionary:(NSDictionary *)data {
    Team *team = [[self alloc] init];
    team.name = [data getStringForKey:@"name"];
    team.wikipedia = [data getStringForKey:@"wikipedia"];
    return team;
}

@end
