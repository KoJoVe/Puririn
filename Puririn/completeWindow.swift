//
//  completeWindow.swift
//  Puririn
//
//  Created by Victor Souza on 5/3/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class completeWindow: SKSpriteNode {
    
    init (size: CGFloat, currentLevel: Int, totalLevel: Int) {
        
        let texture = SKTexture(imageNamed: "Screen_level_cleared")
        let sizeWH = CGSize(width: size, height: size)
        
        super.init(texture: texture, color: nil, size: sizeWH)
        
        var level = SKLabelNode(text: "\(currentLevel) / \(totalLevel)")
        level.position = CGPoint(x: 10, y: 10)
        self.addChild(level)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
