//
//  Selector.swift
//  Puririn
//
//  Created by Victor Souza on 5/2/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit


class LevelSelector: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        self.backgroundColor = UIColor.whiteColor()
        
        var one = SKLabelNode(text: "one")
        one.position = CGPoint(x: 100, y: 100)
        one.fontColor = SKColor.blackColor()
        one.name = "one"
        self.addChild(one)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch in (touches as! Set<UITouch>) {
            
            if nodeAtPoint(touch.locationInNode(self)).name == "one" {
                
                var transition = SKTransition.doorsOpenHorizontalWithDuration(0.5)
                var scene = GameScene(size:self.size)
                scene.scaleMode = .AspectFill
                scene.levelMatrix = [[2,0,0,0,0,0,3],
                                    [0,0,0,0,0,0,0],
                                    [0,0,3,0,0,0,0],
                                    [0,0,0,0,0,0,0],
                                    [0,0,0,0,0,0,0],
                                    [0,0,0,0,0,0,0],
                                    [0,0,0,0,0,0,0],
                                    [0,0,0,0,0,0,0],
                                    [0,0,0,0,0,0,0],
                                    [0,0,0,0,0,0,0],
                                    [0,0,0,0,0,0,0],
                                    [0,0,0,0,0,0,0]]
                self.removeFromParent()
                self.scene!.view?.presentScene(scene, transition: transition)
                
            }
            
        }
        
    }
    
}