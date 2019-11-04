//
//  Test.swift
//  Sample
//
//  Created by Pranay Kumar on 10/31/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import UsageAnalytics

@objc(Test)
class Test: NSObject {
  
  //Usage Analytics
  @objc func setAppId(_ value: String) {
      UsageAnalytics.shared.configure(appId: value)
  }
  
  @objc func setUserId(_ value: String) {
    UsageAnalytics.shared.set(userId: value)
  }
  
  @objc func resetUserId() {
    UsageAnalytics.shared.resetUserId()
  }
  
  @objc func setUserAttribute(_ value: Any, key: String) {
    UsageAnalytics.shared.set(value: value, for: key)
  }
  
  //Log Events
  @objc func logEvent(_ name: String) {
    UsageAnalytics.shared.log(event: name)
  }
  
  @objc func logEventWithParameters(_ value: String, key: [String: Any]) {
      UsageAnalytics.shared.log(event: value, with: key)
  }
}
