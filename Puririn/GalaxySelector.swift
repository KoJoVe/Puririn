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
        
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch in (touches as! Set<UITouch>) {
            
            var theName = nodeAtPoint(touch.locationInNode(self)).name
            
        }
    }
}
