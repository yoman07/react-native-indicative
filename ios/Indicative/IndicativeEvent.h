//
//  Event.h
//  Event
//
//  Created by Indicative on 08-01-13.
//  Copyright (c) 2013 Indicative. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IndicativeEvent : NSObject

@property (nonatomic, copy) NSString *eventName;
@property (nonatomic, copy) NSString *eventUniqueId;
@property (nonatomic, copy) NSNumber *eventTime;
@property (nonatomic, retain) NSDictionary *properties;

+(NSDictionary*)buildJSONDocument:(NSString*)apiKey withEvents:(NSArray*)events;

+(IndicativeEvent*)createEvent:(NSString*)eventName
                  withUniqueId:(NSString*)uniqueId
                withProperties:(NSDictionary*)properties;

@end
