//
//  GGPlayer.h
//  YARRR
//
//  Created by George Reyes on 4/18/15.
//  Copyright (c) 2015 George Reyes. All rights reserved.
//

#import "GGCharacter.h"
#import "GGWeapon.h"
#import "GGArmor.h"

@interface GGPlayer : GGCharacter
@property(strong, nonatomic) GGWeapon* weapon;
@property(strong, nonatomic) GGArmor* armor;
@end
