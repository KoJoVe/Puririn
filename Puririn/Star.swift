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
        
        let texture = SKTexture(imageNamed: "puririn")
        let sizeWH = CGSize(width: size, height: size)
        
        super.init(texture: texture, color: nil, size: sizeWH)
        
        self.name = "puririn"
        self.physicsBody = SKPhysicsBody(circleOfRadius: size/2)
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.dynamic = false
        self.physicsBody?.mass = 1
        self.physicsBody?.linearDamping = 0.3
        self.physicsBody?.angularDamping = 0.3
        self.zPosition = 2
        self.physicsBody?.categoryBitMask = 1 << 2
        self.physicsBody?.contactTestBitMask = 1 << 0
        self.physicsBody?.collisionBitMask = 1 << 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func shrink() {
        var shrink = SKAction.resizeToWidth(0, height: 0, duration: 2)
        self.runAction(shrink)
    }
    
}
