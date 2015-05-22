//
//  Ball.swift
//  Puririn
//
//  Created by Victor Souza on 5/3/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class MovableObject: SKSpriteNode {
    
    
    init(size: CGFloat) {
        
        let texture = SKTexture(imageNamed: "Barrier")
        let sizeWH = CGSize(width: size-10, height: size-10)
        
        super.init(texture: texture, color: nil, size: sizeWH)
        
        self.name = "ball"
        self.physicsBody = SKPhysicsBody(circleOfRadius: (size-10)/2)
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.dynamic = true
        self.physicsBody?.friction = 0.5
        self.physicsBody?.restitution = 0.8
        self.physicsBody?.linearDamping = 0.0
        self.physicsBody?.angularDamping = 0.0
        self.physicsBody?.mass = 10
        self.physicsBody?.categoryBitMask = 1 << 6
        self.zPosition = 2
//        self.physicsBody?.contactTestBitMask = 1 << 0
//        self.physicsBody?.collisionBitMask = 1 << 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}