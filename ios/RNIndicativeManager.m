#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

@interface RCT_EXTERN_MODULE(RNIndicative, NSObject)

RCT_EXTERN_METHOD(launch:(NSString *)apiKey)
RCT_EXTERN_METHOD(identifyUser:(NSString *)uniqueKey)
RCT_EXTERN_METHOD(clearUniqueKey)


RCT_EXTERN_METHOD(addCommonProperties:(NSDictionary *)properties)
RCT_EXTERN_METHOD(addCommonProperty:(NSString*)name withValue:(id)value)
RCT_EXTERN_METHOD(removeCommonProperty:(NSString*)name)
RCT_EXTERN_METHOD(clearCommonProperties)


RCT_EXTERN_METHOD(record:(NSString *)eventName)
RCT_EXTERN_METHOD(recordWithProperties:(NSString *)eventName withProperties: (NSDictionary *)properties)
RCT_EXTERN_METHOD(recordWithUniqueKey:(NSString *)eventName withUniqueKey: (NSString *)uniqueKey)
RCT_EXTERN_METHOD(recordWithPropertiesUniqueKey:(NSString *)eventName withUniqueKey: (NSString *)uniqueKey withProperties: (NSDictionary *)properties)

@end
