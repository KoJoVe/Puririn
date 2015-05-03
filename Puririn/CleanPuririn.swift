//
//  CleanPuririn.swift
//  Puririn
//
//  Created by Victor Souza on 5/3/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class CleanPuririn: SKSpriteNode {
    
    init(size: CGFloat) {
        
        let texture = SKTexture(imageNamed: "puririn")
        let sizeWH = CGSize(width: size, height: size)
        
        super.init(texture: texture, color: nil, size: sizeWH)
        
        self.name = "puririn"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func rotateAndShrink() {
        var shrink = SKAction.resizeToWidth(0, height: 0, duration: 2)
        var angle = CGFloat(-5 * M_PI)
        var duration = Double(2)
        var rotate = SKAction.rotateByAngle(angle, duration: duration)
        self.runAction(shrink)
        self.runAction(rotate)
    }
    
}
