//
//  GGTile.h
//  YARRR
//
//  Created by George Reyes on 3/31/15.
//  Copyright (c) 2015 George Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GGTile : NSObject
@property(strong, nonatomic) NSString* story;
@property(strong, nonatomic) UIImage* background;
//Its possible i'll need a property to keep track of where I am but not here.
@end
