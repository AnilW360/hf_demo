//
//  HFNotificationScreen.m
//  demo_app
//
//  Created by Wellness360 on 9/12/24.
//
#import "HFNotificationScreen.h"
#import <React/RCTLog.h>
#import <UIKit/UIKit.h>

@implementation HFNotificationScreen
//setup client id and client secret
#define OAUTH_CLIENT_ID @"fd037431-9ce4-4663-b18b-0439e1fc25b2"// client id from admin portal
#define OAUTH_CLIENT_SECRET  @"2c662927-7b09-4b39-b6b0-cb327ff79bfc"// client secret from admin portal
#define API_BASE_URL  @"https://enpverify.myhealthfeed.com"// client secret from admin portal

// To export a module named RNScreenManager
RCT_EXPORT_MODULE(HFNotificationScreen);

// This method will be called from React Native
RCT_EXPORT_METHOD(showScreen) {
  dispatch_async(dispatch_get_main_queue(), ^{
    [[HealthFeedSDK sharedInstance] configurateAPIWithServerBaseURl: API_BASE_URL];
    [[HealthFeedSDK sharedInstance] configurateWithApiKey:OAUTH_CLIENT_ID andApiSecret:OAUTH_CLIENT_SECRET];
    [[HFDataManager sharedInstance] loadManagerWithComplition:^(HFUserProfile *profile) {
    if (!profile) {
      profile = [[HFUserProfile alloc] init];
      profile.userID = @"test-member-51"; // unique user/member id
      profile.email = @"beluboy1975@gmail.com";
      // profile.phoneNumber = @"+19726751800";
      profile.firstName = @"Jim";
      profile.lastName = @"McCarthy";
      profile.fullName = @"Jim McCarthy";
      profile.smsSubscribeStatus = [NSNumber numberWithInteger:0]; // 0 = unsubscribed, 1 = subscribed
      profile.emailSubscribeStatus = [NSNumber numberWithInteger:0]; // 0 = unsubscribed, 1 = subscribed

      [[HFDataManager sharedInstance] pushMemberHealthProfileInEnglish:profile withCompletion:^(HFUserProfile *profile, NSError *error) {
       // self.window.rootViewController = tabBarVC;
        //[self.window makeKeyWindow];
      }];
    } 
  }];
    [[HealthFeedSDK sharedInstance] configurateSettingsToShowBottomImage: @"your_logo_here" backgroundColor: [UIColor  clearColor]];
    [[HealthFeedSDK sharedInstance] setMsgCenterViewTitle: @"Message Center"];
    NotificationTrayViewController *notificationTrayViewController = [[NotificationTrayViewController alloc] init];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:notificationTrayViewController animated:YES completion:nil];
  });
}

// Method to close the screen
- (void)closeScreen:(UIButton *)sender {
  UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
  [rootViewController dismissViewControllerAnimated:YES completion:nil];
}


@end
