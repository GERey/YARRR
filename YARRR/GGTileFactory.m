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
    NSMutableArray* tiles = [[NSMutableArray alloc] init];
    int rows = 4;
    int columns = 3;

    //To access things in a folder when you import them you have to add
    //the references as a folder. Otherwise you won't be able to see the
    //resources as part of a directory but just added as random files.
    //Still kindof a drag having full applications names but at least it works!
    
    //Grab all the pirate pictures
    NSArray* gameImages =
    [[NSBundle mainBundle] pathsForResourcesOfType:nil inDirectory:@"pirates"];
    
    NSMutableArray* gameImagesMutableList = [[NSMutableArray alloc] initWithArray:gameImages];
    
    
    
    //To do a random array, take a random generator seeded with the size of the array
    //Then pick a random number
    //Then take that value out of the array and put it into the tile
    //Go back and repeat step 1.
    //Fail Conditions: When there aren't enough images for the game size
    for (int rowIndex = 0; rowIndex < rows; rowIndex++) {
        for (int columnIndex = 0; columnIndex < columns; columnIndex++) {
            //Create a seed based on how many items are in the mutable arrays
            int randomSeed = (int)[gameImagesMutableList count];
            //Use the above number to pick a random index in the mutable array.
            int randomNumber = arc4random_uniform(randomSeed-1);
            //Get an image based on the random number
            NSString* imagePath = gameImagesMutableList[randomNumber];
            
            //Generate a tile initialized with the randomly generated image.
            GGTile* tile = [[GGTile alloc] init];
            tile.story = @"new story";
            tile.background = [UIImage imageWithContentsOfFile:imagePath];
            
            [gameImagesMutableList removeObjectAtIndex:randomNumber];
            
            [tiles addObject:tile];
        }
    }
    
    return tiles;
}
@end
