//
//  GGViewController.m
//  YARRR
//
//  Created by George Reyes on 3/30/15.
//  Copyright (c) 2015 George Reyes. All rights reserved.
//

#import "GGViewController.h"
#import "GGTileFactory.h"
#import "GGTile.h"

@interface GGViewController ()

@end

@implementation GGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    GGTileFactory* tileFactory = [[GGTileFactory alloc] init];
    
    GGTile *currentTile = [[GGTile alloc] init];
    NSArray* gameTiles = [tileFactory generateTiles];
    [self initGame];
    
    currentTile = gameTiles[0][0];
    self.storyDisplay.text = currentTile.story;
    self.gameImage.image = currentTile.background;
    NSLog(@"finished initlization");
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)upButton:(UIButton *)sender {
    
}

- (IBAction)leftButton:(UIButton *)sender {
}

- (IBAction)rightButton:(UIButton *)sender {
}

- (IBAction)downButton:(UIButton *)sender {
}
- (void) initGame{
    self.healthDisplay.text = @"12";
    self.damageDisplay.text = @"1";
    self.weaponNameDisplay.text = @"none";
    self.armorNameDisplay.text = @"none";
    
}
@end
