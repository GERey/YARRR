//
//  GGViewController.h
//  YARRR
//
//  Created by George Reyes on 3/30/15.
//  Copyright (c) 2015 George Reyes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GGTile.h"

@interface GGViewController : UIViewController

//displays
@property (strong, nonatomic) IBOutlet UITextView *healthDisplay;
@property (strong, nonatomic) IBOutlet UITextView *damageDisplay;
@property (strong, nonatomic) IBOutlet UITextView *weaponNameDisplay;
@property (strong, nonatomic) IBOutlet UITextView *armorNameDisplay;
@property (strong, nonatomic) IBOutlet UITextView *storyDisplay;
@property (strong, nonatomic) IBOutlet UIImageView *gameImage;
@property (strong, nonatomic) IBOutlet UIButton *downButtonObject;
@property (strong, nonatomic) IBOutlet UIButton *upButtonObject;
@property (strong, nonatomic) IBOutlet UIButton *leftButtonObject;
@property (strong, nonatomic) IBOutlet UIButton *rightButtonObject;

//global properties
@property (nonatomic) int currentRow;
@property (nonatomic) int currentColumn;
@property (strong, nonatomic) GGTile* currentTile;
@property (strong, nonatomic) NSArray* gameTiles;

//buttons
- (IBAction)upButton:(UIButton *)sender;
- (IBAction)leftButton:(UIButton *)sender;
- (IBAction)rightButton:(UIButton *)sender;
- (IBAction)downButton:(UIButton *)sender;

//helper methods
- (void) disableIfNonExistantIndex;
- (void) changeCurrentTitle;
- (void) initGame;
@end
