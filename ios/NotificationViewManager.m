//
//  NotificationViewManager.m
//  demoapp
//
//  Created by Wellness360 on 9/17/24.
//

#import <Foundation/Foundation.h>
#import "NotificationViewManager.h"
#import "RCTNotificationViewController.h"

@implementation NotificationViewManager

RCT_EXPORT_MODULE(HFRCTNotiScreen)

- (UIView *)view
{
  RCTNotificationViewController *exampleViewController = [[RCTNotificationViewController alloc] init];
  return exampleViewController.view;
}

@end
