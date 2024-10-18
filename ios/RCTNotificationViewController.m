//
//  RCTNotificationViewController.m
//  demoapp
//
//  Created by Wellness360 on 9/17/24.
//

#import <Foundation/Foundation.h>
#import "HealthFeedSDK.h"
#import "RCTNotificationViewController.h"
#import "NotificationTrayView.h"

@implementation RCTNotificationViewController

#define OAUTH_CLIENT_ID @"fd037431-9ce4-4663-b18b-0439e1fc25b2"// client id from admin portal
#define OAUTH_CLIENT_SECRET  @"2c662927-7b09-4b39-b6b0-cb327ff79bfc"// client secret from admin portal
#define API_BASE_URL  @"https://enpverify.myhealthfeed.com"// client secret from admin portal


- (void)viewDidLoad {
  [super viewDidLoad];
  [[HealthFeedSDK sharedInstance] configurateAPIWithServerBaseURl: API_BASE_URL];
  [[HealthFeedSDK sharedInstance] configurateWithApiKey:OAUTH_CLIENT_ID andApiSecret:OAUTH_CLIENT_SECRET];
  [[HFDataManager sharedInstance] loadManagerWithComplition:^(HFUserProfile *profile) {
      if (!profile) {
      profile = [[HFUserProfile alloc] init];
      profile.userID = @"test-member-51"; // unique user/member id
      profile.email = @"beluboy1975@gmail.com";
      profile.firstName = @"Jim";
      profile.lastName = @"McCarthy";
      profile.fullName = @"Jim McCarthy";
      profile.smsSubscribeStatus = [NSNumber numberWithInteger:0]; // 0 = unsubscribed, 1 = subscribed
      profile.emailSubscribeStatus = [NSNumber numberWithInteger:0]; // 0 = unsubscribed, 1 = subscribed

      [[HFDataManager sharedInstance] pushMemberHealthProfileInEnglish:profile withCompletion:^(HFUserProfile *profile, NSError *error) {
          // Handle completion
      }];
      }
  }];
  [[HealthFeedSDK sharedInstance] configurateSettingsToShowBottomImage: @"your_logo_here" backgroundColor: [UIColor  whiteColor]];
  [[HealthFeedSDK sharedInstance] setMsgCenterViewTitle: nil];
  // Create an instance of NotificationTrayView
  NotificationTrayView *notificationTrayView = [[NotificationTrayView alloc] initWithFrame:self.view.bounds];
  
  // Add the NotificationTrayView to the view controller's view
  [self.view addSubview:notificationTrayView];
  
  // Set up constraints to match the NotificationTrayView to the view controller's view bounds
  notificationTrayView.translatesAutoresizingMaskIntoConstraints = NO;
  [NSLayoutConstraint activateConstraints:@[
    [notificationTrayView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
    [notificationTrayView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
    [notificationTrayView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
    [notificationTrayView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor]
  ]];
}

@end
