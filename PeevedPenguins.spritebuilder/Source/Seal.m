//
//  Seal.m
//  PeevedPenguins
//
//  Created by Sree K on 3/07/2014.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Seal.h"

@implementation Seal
-(void)didLoadFromCCB {
    self.physicsBody.collisionType = @"seal";
}
-(void) ccPhysicsCollisionPostSolive:(CCPhysicsCollisionPair *)pair seal:(CCNode *) nodeA wildcard:(CCNode *)node;
{
    CCLOG(@"Something collided with seal");
    
}
@end
