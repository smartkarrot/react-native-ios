//
//  SmartKarrot.m
//  Sample
//
//  Created by Pranay Kumar on 10/31/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(SmartKarrot, NSObject)

RCT_EXTERN_METHOD(setAppId:(NSString *)appId)
RCT_EXTERN_METHOD(setUserId:(NSString *)userId)
RCT_EXTERN_METHOD(resetUserId)
RCT_EXTERN_METHOD(setUserAttribute:(NSString *)value key:(NSString *)key)
RCT_EXTERN_METHOD(logEvent:(NSString *)event)
RCT_EXTERN_METHOD(logEventWithParameters:(NSString *)event parameters:(NSDictionary *)parameters)

@end
