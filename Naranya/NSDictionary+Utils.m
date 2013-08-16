//
//  NSDictionary+Utils.m
//  Naranya
//
//  Created by Gerardo Robles on 8/16/13.
//  Copyright (c) 2013 Gerardo Robles. All rights reserved.
//

#import "NSDictionary+Utils.h"

@implementation NSDictionary (Utils)

-(NSString*)getStringForKey:(NSString*)key {
    NSString *val = [self objectForKey:key];
    if(val == nil || [[NSNull null] isEqual:val]) {
        return @"";
    }
    else {
        return val;
    }
}

@end
