//
//  Star.swift
//  Puririn
//
//  Created by Victor Souza on 5/3/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class Star: SKSpriteNode {
    
    init(size: CGFloat) {
        
        let texture = SKTexture(imageNamed: "Star")
        let sizeWH = CGSize(width: size-20, height: size-20)
        
        super.init(texture: texture, color: nil, size: sizeWH)
        
        self.name = "Star"
        self.physicsBody = SKPhysicsBody(circleOfRadius: (size-20)/2)
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.dynamic = false
        self.physicsBody?.friction = 0.0
        self.physicsBody?.restitution = 0.8
        self.physicsBody?.linearDamping = 0.0
        self.physicsBody?.angularDamping = 0.0
        self.physicsBody?.categoryBitMask = 1 << 2
        self.physicsBody?.contactTestBitMask = 1 << 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
