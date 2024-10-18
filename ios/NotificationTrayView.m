//
//  NotificationTrayView.m
//  demoapp
//
//  Created by Wellness360 on 9/17/24.
//

#import <Foundation/Foundation.h>
#import "NotificationTrayView.h"
#import "NotificationTrayViewController.h"

@implementation NotificationTrayView {
  NotificationTrayViewController *_notificationTrayViewController;
}

- (instancetype)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    [self setupNotificationTrayViewController];
  }
  return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
  self = [super initWithCoder:coder];
  if (self) {
    [self setupNotificationTrayViewController];
  }
  return self;
}

- (void)setupNotificationTrayViewController {
  // Initialize the NotificationTrayViewController
  _notificationTrayViewController = [[NotificationTrayViewController alloc] init];
  
  // Add the NotificationTrayViewController's view as a subview
  [self addSubview:_notificationTrayViewController.view];
  
  // Set up constraints to match the NotificationTrayViewController's view to the NotificationTrayView's bounds
  _notificationTrayViewController.view.translatesAutoresizingMaskIntoConstraints = NO;
  [NSLayoutConstraint activateConstraints:@[
    [_notificationTrayViewController.view.topAnchor constraintEqualToAnchor:self.topAnchor],
    [_notificationTrayViewController.view.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
    [_notificationTrayViewController.view.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
    [_notificationTrayViewController.view.trailingAnchor constraintEqualToAnchor:self.trailingAnchor]
  ]];
}

@end
