//
//  GGViewController.m
//  YARRR
//
//  Created by George Reyes on 3/30/15.
//  Copyright (c) 2015 George Reyes. All rights reserved.
//

#import "GGViewController.h"
#import "GGTileFactory.h"
//#import "GGTile.h"

@interface GGViewController ()

@end

@implementation GGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.currentRow = 0;
    self.currentColumn = 0;
    
    GGTileFactory* tileFactory = [[GGTileFactory alloc] init];
    
    self.currentTile = [[GGTile alloc] init];
    self.gameTiles = [tileFactory generateTiles];
    [self initGame];
    
    self.currentTile = self.gameTiles[self.currentRow][self.currentColumn];
    [self changeCurrentTitle];
    [self disableIfNonExistantIndex];
    NSLog(@"finished initlization");
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    //Makes the column increase by one
- (IBAction)upButton:(UIButton *)sender {
    NSLog(@"current row: %i, current column: %i",self.currentRow,self.currentColumn);
    self.currentTile = self.gameTiles[self.currentRow][self.currentColumn++];
    NSLog(@"Changed row: %i, Changed column: %i",self.currentRow,self.currentColumn);

    [self changeCurrentTitle];
    [self disableIfNonExistantIndex];

}
    //
- (IBAction)leftButton:(UIButton *)sender {
    NSLog(@"current row: %i, current column: %i",self.currentRow,self.currentColumn);
    self.currentTile = self.gameTiles[self.currentRow--][self.currentColumn];
    NSLog(@"Changed row: %i, Changed column: %i",self.currentRow,self.currentColumn);

    [self changeCurrentTitle];
    [self disableIfNonExistantIndex];


}

- (IBAction)rightButton:(UIButton *)sender {
    NSLog(@"current row: %i, current column: %i",self.currentRow,self.currentColumn);
    self.currentTile = self.gameTiles[self.currentRow++][self.currentColumn];
    NSLog(@"Changed row: %i, Changed column: %i",self.currentRow,self.currentColumn);

    [self changeCurrentTitle];
    [self disableIfNonExistantIndex];


}

- (IBAction)downButton:(UIButton *)sender {
    NSLog(@"current row: %i, current column: %i",self.currentRow,self.currentColumn);
    self.currentTile = self.gameTiles[self.currentRow][self.currentColumn--];
    NSLog(@"Changed row: %i, Changed column: %i",self.currentRow,self.currentColumn);

    [self changeCurrentTitle];
    [self disableIfNonExistantIndex];

}
- (void) initGame{
    self.healthDisplay.text = @"12";
    self.damageDisplay.text = @"1";
    self.weaponNameDisplay.text = @"none";
    self.armorNameDisplay.text = @"none";
    
}
-(void) changeCurrentTitle{
    self.storyDisplay.text = self.currentTile.story;
    self.gameImage.image = self.currentTile.background;
}
- (void) disableIfNonExistantIndex{
    //Not space efficient but I don't wanna type out self.blah everytime.
    NSArray* a = self.gameTiles;
    int r = self.currentRow;
    int maxRow = (int) a.count;
    int maxCol = (int)[a[r] count];
    int lowestValue = 0;
    int c = self.currentColumn;
    //just use count to get how many are in each row and make sure you can't go
    //above or below that

    
    //right button check
    if ( maxRow > r+1 )
        self.rightButtonObject.enabled = YES;
    
    else
        self.rightButtonObject.enabled = NO;

    //left button check
    //zero is the lowest
    if ( lowestValue <= r-1 )
        self.leftButtonObject.enabled = YES;

    else
        self.leftButtonObject.enabled = NO;

    //up button check
    if ( maxCol > c+1 )
        self.upButtonObject.enabled = YES;
    
    else
        self.upButtonObject.enabled = NO;

    //down button check
    if ( lowestValue <= c-1 )
        self.downButtonObject.enabled = YES;
    
    else
        self.downButtonObject.enabled = NO;

}

@end
