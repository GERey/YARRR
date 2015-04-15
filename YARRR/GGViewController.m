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
    [self disableIfNonExistantIndex];
    self.currentTile = self.gameTiles[self.currentRow][self.currentColumn++];
    [self changeCurrentTitle];
}
    //
- (IBAction)leftButton:(UIButton *)sender {
    [self disableIfNonExistantIndex];
    self.currentTile = self.gameTiles[self.currentRow--][self.currentColumn];
    [self changeCurrentTitle];

}

- (IBAction)rightButton:(UIButton *)sender {
    [self disableIfNonExistantIndex];
    self.currentTile = self.gameTiles[self.currentRow++][self.currentColumn];
    [self changeCurrentTitle];

}

- (IBAction)downButton:(UIButton *)sender {
    [self disableIfNonExistantIndex];
    self.currentTile = self.gameTiles[self.currentRow][self.currentColumn--];
    [self changeCurrentTitle];
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
    int r = self.currentRow;
    int c = self.currentColumn;
    NSArray* a = self.gameTiles;
    //just use count to get how many are in each row and make sure you can't go
    //above or below that
    
    //right button check
    if (![a objectAtIndex:r+1]) {
        self.rightButtonObject.enabled = NO;
    }
    else
        self.rightButtonObject.enabled = YES;
    //left button check
    if (![a objectAtIndex:r-1]) {
        self.leftButtonObject.enabled = NO;
    }
    else
        self.leftButtonObject.enabled = YES;
    //up button check
    if (![a[r] objectAtIndex:c+1]) {
        self.upButtonObject.enabled = NO;
    }
    else
        self.upButtonObject.enabled = YES;
    //down button check
    if (![a[r] objectAtIndex:c-1]) {
        self.downButtonObject.enabled = NO;
    }
    else
        self.downButtonObject.enabled = YES;

}

@end
