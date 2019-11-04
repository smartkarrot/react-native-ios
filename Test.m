//
//  Test.m
//  Sample
//
//  Created by Pranay Kumar on 10/31/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(Test, NSObject)

RCT_EXTERN_METHOD(setAppId:(NSString *)value)
RCT_EXTERN_METHOD(setUserId:(NSString *)value)
RCT_EXTERN_METHOD(resetUserId)
RCT_EXTERN_METHOD(setUserAttribute:(NSString *)value key:(NSString *)key)
RCT_EXTERN_METHOD(logEvent:(NSString *)name)
RCT_EXTERN_METHOD(logEventWithParameters:(NSString *)value key:(NSDictionary *)key)

@end
