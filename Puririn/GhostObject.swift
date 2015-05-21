//
//  Ball.swift
//  Puririn
//
//  Created by Victor Souza on 5/3/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class GhostObject: SKSpriteNode {
    
    
    init(size: CGFloat) {
        
        let texture = SKTexture(imageNamed: "Barrier")
        let sizeWH = CGSize(width: size-10, height: size-10)
        
        super.init(texture: texture, color: nil, size: sizeWH)
        
        self.name = "ghost"
        self.physicsBody = SKPhysicsBody(circleOfRadius: (size-10)/2)
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.categoryBitMask = 1 << 4
        self.zPosition = 2
        self.physicsBody?.contactTestBitMask = 1 << 0
        self.physicsBody?.collisionBitMask = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeAlpha() {
        
        if self.alpha == 1 {
            
            self.runAction(SKAction.fadeAlphaTo(0, duration: 0.2))
            
        }
        
        else {
            
            self.runAction(SKAction.fadeAlphaTo(1, duration: 0.2))
            
        }
        
    }
}