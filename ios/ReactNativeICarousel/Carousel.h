//
//  Carousel.h
//  newsShotReactNative
//
//  Created by Mateusz Derks on 29/09/15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RCTView.h"
#import "iCarousel.h"

@interface Carousel : iCarousel <iCarouselDataSource, iCarouselDelegate>
  @property (nonatomic) NSMutableArray * items;
@end
