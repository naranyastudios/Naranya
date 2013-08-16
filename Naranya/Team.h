//
//  Team.h
//  Naranya
//
//  Created by Gerardo Robles on 8/15/13.
//  Copyright (c) 2013 Gerardo Robles. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Team : NSObject {
    NSString *name;
    NSString *wikipedia;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *wikipedia;

+ (Team *)teamWithDictionary:(NSDictionary *)data;

@end