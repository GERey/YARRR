//
//  GGViewController.m
//  YARRR
//
//  Created by George Reyes on 3/30/15.
//  Copyright (c) 2015 George Reyes. All rights reserved.
//

#import "GGViewController.h"
#import "GGTileFactory.h"

@interface GGViewController ()

@end

@implementation GGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    GGTileFactory* tileFactory = [[GGTileFactory alloc] init];
    NSArray* gameTiles = [tileFactory generateTiles];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
