//
//  completeWindow.swift
//  Puririn
//
//  Created by Victor Souza on 5/3/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class completeWindow: SKSpriteNode {
    
    var level = SKLabelNode()
    
    init (currentLevel: Int, totalLevel: Int, stars: Int) {
        
        var texture = SKTexture(imageNamed: "Window0")
        
        if(stars == 0) {
            
        } else if(stars == 1) {
            texture = SKTexture(imageNamed: "Window1")
        } else if(stars == 2) {
            texture = SKTexture(imageNamed: "Window2")
        } else if(stars == 3) {
            texture = SKTexture(imageNamed: "Window3")
        }
    
        super.init(texture: texture, color: nil, size: texture.size())
        
        self.name = "window"
        self.zPosition = 1
        
        level = SKLabelNode(text: "\(currentLevel) / \(totalLevel)")
        level.name = "window"
        level.fontSize = 16
        level.fontName = "HelveticaNeue-Bold"
        level.position = CGPoint(x: CGRectGetMidX(self.frame),y: CGRectGetMidY(self.frame) - 47)
        level.hidden = true
        level.zPosition = 2
        self.addChild(level)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func animateLabel() {
        
        var wait = SKAction.waitForDuration(0.5)
        var block = SKAction.runBlock({
            self.level.hidden = false
        })
        
        self.level.runAction(SKAction.sequence([wait,block]))
        
    }
    
}
