//
//  GGCharacter.h
//  YARRR
//
//  Created by George Reyes on 4/18/15.
//  Copyright (c) 2015 George Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GGCharacter : NSObject

@property(nonatomic) int health;
@property(nonatomic) int damage;

-(void) attack;

@end

