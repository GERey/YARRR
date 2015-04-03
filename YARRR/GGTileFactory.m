//
//  GGTileFactory.m
//  YARRR
//
//  Created by George Reyes on 3/31/15.
//  Copyright (c) 2015 George Reyes. All rights reserved.
//

#import "GGTileFactory.h"
#import "GGTile.h"

@implementation GGTileFactory
-(NSArray*) generateTiles {
    NSArray* tiles;
    int rows = 4;
    int columns = 3;

    //To access things in a folder when you import them you have to add
    //the references as a folder. Otherwise you won't be able to see the
    //resources as part of a directory but just added as random files.
    //Still kindof a drag having full applications names but at least it works!
    NSArray* gameImages =
    [[NSBundle mainBundle] pathsForResourcesOfType:nil inDirectory:@"pirates"];

    for (int rowIndex = 0; rowIndex < rows; rowIndex++) {
        for (int columnIndex = 0; columnIndex < columns; columnIndex++) {
            GGTile* tile = [[GGTile alloc] init];
            
            //tile.background = [UIImage imageNamed:
                               
                               
            
        }
    }
    
    return tiles;
}
@end
