//
//  HFMapView.m
//  demoapp
//
//  Created by Wellness360 on 9/16/24.
//
#import <Foundation/Foundation.h>
#import "HFMapView.h"
@implementation HFMapView

RCT_EXPORT_MODULE(RNTMapView)

- (UIView *)view
{
  return [[MKMapView alloc] init];
}

@end
