# SmartKarrot

A React Native module that allows you to use native files through bridging.

# Getting Started

1) Follow below guidelines and install these pods in your podfile 

i) Set the iOS deployment target to >= 10.0

platform :ios, '10.0'

ii) Add these pods in podfile

use_frameworks!

pod 'SmartKarrot-Core'

pod 'SmartKarrot-Survey'

pod 'SmartKarrot-Referral'


iii) Set swift version for any one of the targets

pre_install do |installer|
	installer.analysis_result.specifications.each do |s|
        if s.name == 'AlamofireNetworkActivityIndicator'
            s.swift_version = '5.0'
        end
    end
end


2) Drag and drop iOS native files in to Xcode project, it will prompt add Bridging header to project. Click on Create Bridging header button.

3) Add this line in your BridgingHeader.h file 

#import "React/RCTBridgeModule.h" 

//SmartKarrot is built in Swift version so we need to do some setting changes to use this in objective class (AppDelegate.m)

3) Set Define Modules to Yes:

Open Xcode, go to Build settings -> Packaging -> Define Modules -> Yes

4) Configure AppId in Appdelegate.m

#import "YourTargetName-Swift.h" -> YourTargetName should be same as Product Name in Build Settings

Ex: Target Name is Sample then #import "Sample-Swift.h"

Then configure AppId in AppDelegate.m class

SmartKarrot *smartKarrot = [[Test alloc]init];
  [smartKarrot setAppId:@"app-id"];
  
  SmartKarrot -> SmartKarrot is an Swift class where all the methods are implemented.

# Usage

import {NativeModules} from 'react-native'

const UserAttribute  = {

  userId: 'userId',
  
  name: 'name',
  
  emailId: 'emailId',
  
  mobileNumber: 'mobileNumber',
  
  dateOfBirth: 'dateOfBirth',
  
  gender: 'gender',
  
  country: 'country',
  
  language: 'language'
  
}

Use these following methods to call in your .js class

1) NativeModules.Test.setUserId("user-id")

2) NativeModules.Test.resetUserId()

2) NativeModules.Test.setUserAttribute("English",UserAttribute.language)

3) NativeModules.Test.logEventWithParameters("Job Details",{'key':'id','value':'123'})
