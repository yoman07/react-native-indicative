//
//  Indicative.m
//  Indicative
//
//  Object representing an Indicative Event.
//
//  Created by Indicative on 08-01-13.
//  Copyright (c) 2013 Indicative. All rights reserved.
//

#import "IndicativeEvent.h"
#import "Indicative.h"

@implementation IndicativeEvent

/**
 * Creates an NSDictionary representing the Event.
 *
 * @returns the NSDictionary representing the Event.
 */
-(NSDictionary*)toJson {
    NSMutableDictionary* json = [NSMutableDictionary dictionary];
    
    [json setValue:self.eventName forKey:@"eventName"];
    
    [json setValue:self.eventTime forKey:@"eventTime"];
    
    if (self.properties.count > 0) {
        [json setObject:self.properties forKey:@"properties"];
    }
    
    if (self.eventUniqueId != nil) {
        [json setObject:self.eventUniqueId forKey:@"eventUniqueId"];
    }
    
    return json;
}

+(NSDictionary*)buildJSONDocument:(NSString*)apiKey withEvents:(NSArray*)events {
    NSMutableDictionary *json = [NSMutableDictionary dictionary];

    [json setValue:apiKey forKey:@"apiKey"];
    
    NSMutableArray *eventJson = [NSMutableArray array];
    
    for(id event in events) {
        [eventJson addObject:[event toJson]];
    }
    
    [json setValue:eventJson forKey:@"events"];
    
    return json;
}

/**
 * Creates the Event and sets its initial values.
 *
 * @param eventName    the name of the event
 * @param uniqueId     a unique identifier for the user associated with the event
 *
 * @returns the created Event
 */
+(IndicativeEvent*)createEvent:(NSString*)eventName withUniqueId:(NSString*)uniqueId withProperties:(NSDictionary*)properties {
    
    IndicativeEvent *data = [[IndicativeEvent alloc] init];
    
    data.eventName = eventName;
    data.eventUniqueId = uniqueId;
    
    double timestamp = [[NSDate date] timeIntervalSince1970];
    long long timeInMilisInt64 = (long long)(timestamp*1000);
    
    data.eventTime = [NSNumber numberWithLongLong:timeInMilisInt64];
    data.properties = properties;
    
    return data;
}

@end
