//
//  File.swift
//  Puririn
//
//  Created by Victor Souza on 5/2/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class Puririn: SKSpriteNode {
    
    
    init(size: CGFloat) {
        
        let texture = SKTexture(imageNamed: "puririn")
        let sizeWH = CGSize(width: size, height: size)
        
        super.init(texture: texture, color: nil, size: sizeWH)
        
        self.name = "puririn"
        self.physicsBody = SKPhysicsBody(circleOfRadius: size/2)
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.dynamic = true
        self.physicsBody?.mass = 1
        self.physicsBody?.linearDamping = 0.3
        self.physicsBody?.angularDamping = 0.3
        self.zPosition = 2
        self.physicsBody?.categoryBitMask = 1 << 0
        self.physicsBody?.contactTestBitMask = 1 << 1 | 1 << 2 | 1 << 3
        var bla = 1 << 1 | 1 << 3 | 1 << 5
        bla = bla | 1 << 6 | 1 << 7
        self.physicsBody?.collisionBitMask = UInt32(bla)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
