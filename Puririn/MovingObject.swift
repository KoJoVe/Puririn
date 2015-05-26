//
//  Ball.swift
//  Puririn
//
//  Created by Victor Souza on 5/3/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class MovingObject: SKSpriteNode {
    
    var direction = 0
    var velocity:CGFloat = 0
    
    init(size: CGFloat) {
        
        let texture = SKTexture(imageNamed: "Sattelite")
        let sizeWH = CGSize(width: size*1.4, height: size*1.4)
        
        super.init(texture: texture, color: nil, size: sizeWH)
        
        velocity = 4 * size
        
        self.name = "sattelite"
        self.physicsBody = SKPhysicsBody(circleOfRadius: (size-0.1)/2)
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.dynamic = true
        self.physicsBody?.friction = 0.0
        self.physicsBody?.restitution = 0.0
        self.physicsBody?.linearDamping = 0.0
        self.physicsBody?.angularDamping = 0.0
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.categoryBitMask = 1 << 5
        self.zPosition = 2
        var bla = 1 << 0 | 1 << 3 | 1 << 5
        bla = bla | 1 << 6
        self.physicsBody?.contactTestBitMask = UInt32(bla)
        self.physicsBody?.collisionBitMask = 1 << 5
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getNewDirectionVector() -> CGVector {
        
        if self.direction == 0 {
            
            self.direction = 1
            return CGVectorMake(self.velocity, 0)
            
        } else if self.direction == 1 {
            
            self.direction = 0
            return CGVectorMake(-self.velocity, 0)
            
        } else if self.direction == 2 {
            
            self.direction = 3
            return CGVectorMake(0, self.velocity)
            
        } else if self.direction == 3 {
            
            self.direction = 2
            return CGVectorMake(0, -self.velocity)
            
        }
        
        return CGVectorMake(0, 0)
        
    }
    
}