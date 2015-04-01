//
//  GGTileFactory.h
//  YARRR
//
//  Created by George Reyes on 3/31/15.
//  Copyright (c) 2015 George Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GGTileFactory : NSObject

@property (strong, nonatomic) NSMutableArray* tiles;
-(NSArray*) generateTiles;

@end
