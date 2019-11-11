//
//  SmartKarrot.swift
//  Sample
//
//  Created by Pranay Kumar on 10/31/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import UsageAnalytics

@objc(SmartKarrot)
class SmartKarrot: NSObject {
  
  //Usage Analytics
  @objc func setAppId(_ appId: String) {
      UsageAnalytics.shared.configure(appId: appId)
  }
  
  @objc func setUserId(_ userId: String) {
    UsageAnalytics.shared.set(userId: userId)
  }
  
  @objc func resetUserId() {
    UsageAnalytics.shared.resetUserId()
  }
  
  @objc func setUserAttribute(_ value: Any, key: String) {
    UsageAnalytics.shared.set(value: value, for: key)
  }
  
  //Log Events
  @objc func logEvent(_ event: String) {
    UsageAnalytics.shared.log(event: event)
  }
  
  @objc func logEventWithParameters(_ event: String, parameters: [String: Any]) {
      UsageAnalytics.shared.log(event: event, with: parameters)
  }
}
