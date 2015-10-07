//
//  Carousel.m
//  newsShotReactNative
//
//  Created by Mateusz Derks on 29/09/15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import "Carousel.h"

@implementation Carousel
  - (id) init
  {
    self = [super init];
    if (self)
    {
      self.items = [[NSMutableArray alloc] init];
    }
    
    return self;
  }

  - (void)insertSubview:(UIView *)view
                atIndex:(NSInteger)index
  {
    [self.items insertObject:view atIndex:index];
    [self reloadData];
    
    if (self.items.count == 1)
    {
      [self setCurrentItemIndex:0];
    }
  }

  - (NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel
  {
    return self.items.count;
  }

  - (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
  {
    return [self.items objectAtIndex:index];
  }
@end
