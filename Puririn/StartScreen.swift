//
//  StartScreen.swift
//  Puririn
//
//  Created by Joao Nassar Galante Guedes on 03/05/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class StartScreen: SKScene {
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        var bc = SKSpriteNode(imageNamed: "Background")
        bc.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        bc.name = "Back"
        
        self.addChild(bc)
        
    }
   
}
