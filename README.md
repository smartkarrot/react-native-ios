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


2) Add this package in dependencies in your package.josn file:

"smart-karrot": "https://github.com/Pranay2019/SmartKarrot.git"

Install package using: npm install

//SmartKarrot is build in Swift so we have to do some setting changes to use this in objective class (AppDelegate.m)

3) Set Define Modules to Yes:

Open Xcode, go to Build settings -> Packaging -> Define Modules -> Yes

4) Configure AppId in Appdelegate.m

#import "YourTargetName-Swift.h" -> YourTargetName should be same as Product Name in Build Settings

Ex: Target Name is Sample then #import "Sample-Swift.h"

Then configure AppId in AppDelegate.m class

Test *test = [[Test alloc]init];
  [test setAppId:@"app-id"];
  
  Test -> Test is an Swift class where all the methods are implemented.

# Usage

import NativeModules from 'react-native';

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

Use these following methods to call in your js class

1) NativeModules.Test.setUserId("user-id")}

2) NativeModules.Test.setUserAttribute("English",UserAttribute.language)}

3) NativeModules.Test.logEventWithParameters("Job Details",{'key':'id','value':'123'})}
