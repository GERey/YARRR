//
//  GGCharacter.h
//  YARRR
//
//  Created by George Reyes on 3/31/15.
//  Copyright (c) 2015 George Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GGWeapon.h"
#import "GGArmor.h"

@interface GGCharacter : NSObject

@property(nonatomic ) int health;
@property(nonatomic ) int damage;
@property(strong, nonatomic) GGWeapon* weapon;
@property(strong, nonatomic) GGArmor* armor;

-(void) attack;

@end
