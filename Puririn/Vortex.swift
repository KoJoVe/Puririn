//
//  Vortex.swift
//  Puririn
//
//  Created by Victor Souza on 5/2/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class Vortex: SKSpriteNode {
    
    init(size: CGFloat) {
        
        let texture = SKTexture(imageNamed: "puririn")
        let sizeWH = CGSize(width: size, height: size)
        
        super.init(texture: texture, color: nil, size: sizeWH)
        
        self.name = "vortex"
        self.physicsBody = SKPhysicsBody(circleOfRadius: size/2)
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.dynamic = false
        self.physicsBody?.mass = 1
        self.physicsBody?.linearDamping = 0.3
        self.physicsBody?.angularDamping = 0.3
        self.zPosition = 2
        self.physicsBody?.categoryBitMask = 1 << 1
        self.physicsBody?.contactTestBitMask = 1 << 0
        self.physicsBody?.collisionBitMask = 1 << 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}