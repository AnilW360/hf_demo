//
//  HFMessageNativeModule.m
//  demoapp
//
//  Created by Wellness360 on 9/16/24.
//

#import <Foundation/Foundation.h>
#import "HFMessageNativeModule.h"
#import "HFMessageScreen.h"
#import <React/RCTLog.h>

@implementation HFMessageNativeModule

RCT_EXPORT_MODULE(HFMessageNativeModule);

RCT_EXPORT_METHOD(openNativeScreen:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
  dispatch_async(dispatch_get_main_queue(), ^{
      UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
      
      // Make sure we're working with the navigation controller
      UINavigationController *navController = (UINavigationController *)rootViewController;
      if ([navController isKindOfClass:[UINavigationController class]]) {
        HFMessageScreen *nativeViewController = [[HFMessageScreen alloc] init];
          [navController pushViewController:nativeViewController animated:YES];
          resolve(@(YES));  // Successfully pushed the view
      } else {
          NSError *error = [NSError errorWithDomain:@"MyNativeModule" code:500 userInfo:@{NSLocalizedDescriptionKey: @"Root is not a UINavigationController"}];
          reject(@"no_navigation", @"Root view controller is not a navigation controller", error);
      }
  });
}

@end
