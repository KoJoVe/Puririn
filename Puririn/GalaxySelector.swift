//
//  GalaxySelector.swift
//  Puririn
//
//  Created by Joao Nassar Galante Guedes on 18/05/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class GalaxySelector: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        var bc = SKSpriteNode(imageNamed: "Space")
        var h = (self.frame.size.width*bc.size.height)/bc.size.width
        bc.size = CGSizeMake(self.frame.size.width, h)
        bc.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        bc.name = "Back"
        bc.zPosition = 0
        
        self.addChild(bc)
        
        var gl1 = SKSpriteNode(imageNamed: "Galaxy")
        gl1.size = CGSizeMake(self.frame.size.width/2, self.frame.size.width/2)
        gl1.position = CGPointMake(gl1.size.width/2, gl1.size.width/2 + 100)
        gl1.name = "G1"
        gl1.blendMode = SKBlendMode.Screen
        gl1.zPosition = 1
        
        self.addChild(gl1)
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch in (touches as! Set<UITouch>) {
            
            var theName = nodeAtPoint(touch.locationInNode(self)).name
            
        }
    }
}
