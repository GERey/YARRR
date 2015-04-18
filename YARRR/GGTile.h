//
//  GGTile.h
//  YARRR
//
//  Created by George Reyes on 3/31/15.
//  Copyright (c) 2015 George Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GGItem.h"

@interface GGTile : NSObject
@property(strong, nonatomic) NSString* story;
@property(strong, nonatomic) UIImage* background;
@property(strong, nonatomic) GGItem* item;
//I wonder if the tiles themselves should try to keep  track of area they are

@end
