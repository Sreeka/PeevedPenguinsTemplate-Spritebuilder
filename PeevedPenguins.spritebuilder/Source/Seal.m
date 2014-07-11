//
//  Seal.m
//  PeevedPenguins
//
//  Created by Sree K on 3/07/2014.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Seal.h"
#import "CCPhysics+ObjectiveChipmunk.h"

@implementation Seal
-(void)didLoadFromCCB {
    self.physicsBody.collisionType = @"seal";
    _physicsNode.collisionDelegate = self;
}
- (void)ccPhysicsCollisionPostSolve:(CCPhysicsCollisionPair *)pair seal:(CCNode *)nodeA wildcard:(CCNode *)nodeB {
    float energy = [pair totalKineticEnergy];
    
    // if energy is large enough, remove the seal
    if (energy > 5000.f) {
        [[_PhysicsNode space] addPostStepBlock:^{
            [self sealRemoved:nodeA];
        } key:nodeA];
    }
}

- (void)sealRemoved:(CCNode *)seal {
    [seal removeFromParent];
}

@end
