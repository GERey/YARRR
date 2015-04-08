//
//  GGViewController.h
//  YARRR
//
//  Created by George Reyes on 3/30/15.
//  Copyright (c) 2015 George Reyes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GGViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextView *healthDisplay;
@property (strong, nonatomic) IBOutlet UITextView *damageDisplay;
@property (strong, nonatomic) IBOutlet UITextView *weaponNameDisplay;
@property (strong, nonatomic) IBOutlet UITextView *armorNameDisplay;
@property (strong, nonatomic) IBOutlet UITextView *storyDisplay;
@property (strong, nonatomic) IBOutlet UIImageView *gameImage;
- (IBAction)upButton:(UIButton *)sender;
- (IBAction)leftButton:(UIButton *)sender;
- (IBAction)rightButton:(UIButton *)sender;
- (IBAction)downButton:(UIButton *)sender;

@end
