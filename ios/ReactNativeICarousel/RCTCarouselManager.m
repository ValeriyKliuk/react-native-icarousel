//
//  RCTCarouselManager.m
//  newsShotReactNative
//
//  Created by Mateusz Derks on 29/09/15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Carousel.h"
#import "RCTCarouselManager.h"

@implementation RCTCarouselManager
  RCT_EXPORT_MODULE()

  RCT_EXPORT_VIEW_PROPERTY(type, NSInteger)

  RCT_EXPORT_VIEW_PROPERTY(vertical, BOOL)
  RCT_EXPORT_VIEW_PROPERTY(bounces, BOOL)
  RCT_EXPORT_VIEW_PROPERTY(scrollEnabled, BOOL)

  RCT_EXPORT_VIEW_PROPERTY(perspective, CGFloat)
  RCT_EXPORT_VIEW_PROPERTY(decelerationRate, CGFloat)
  RCT_EXPORT_VIEW_PROPERTY(scrollSpeed, CGFloat)
  RCT_EXPORT_VIEW_PROPERTY(bounceDistance, CGFloat)

  - (NSDictionary *)constantsToExport
  {
    return @{
      @"Type": @{
        @"iCarouselTypeLinear": @(iCarouselTypeLinear),
        @"iCarouselTypeRotary": @(iCarouselTypeRotary),
        @"iCarouselTypeInvertedRotary": @(iCarouselTypeInvertedRotary),
        @"iCarouselTypeCylinder": @(iCarouselTypeCylinder),
        @"iCarouselTypeInvertedCylinder": @(iCarouselTypeInvertedCylinder),
        @"iCarouselTypeWheel": @(iCarouselTypeWheel),
        @"iCarouselTypeInvertedWheel": @(iCarouselTypeInvertedWheel),
        @"iCarouselTypeCoverFlow": @(iCarouselTypeCoverFlow),
        @"iCarouselTypeCoverFlow2": @(iCarouselTypeCoverFlow2),
        @"iCarouselTypeTimeMachine": @(iCarouselTypeTimeMachine),
        @"iCarouselTypeInvertedTimeMachine": @(iCarouselTypeInvertedTimeMachine),
        @"iCarouselTypeCustom": @(iCarouselTypeCustom)
      }
    };
  }

  - (UIView *)view
  {
    Carousel * carousel;
    carousel = [[Carousel alloc] init];
    carousel.dataSource = carousel;
    carousel.delegate = carousel;
    return carousel;
  }
@end
