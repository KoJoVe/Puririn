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
        
        var lg = SKSpriteNode(imageNamed: "LogoInicio")
        lg.size = CGSizeMake(self.frame.width/1.5, self.frame.width/1.5)
        lg.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame) + 50)
        lg.name = "Logo"
        
        self.addChild(lg)
        
        var ng = SKSpriteNode(imageNamed: "Play Game")
        ng.size = CGSizeMake(ng.frame.size.width/4, ng.frame.size.height/4)
        ng.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame) - 130)
        ng.name = "StartGame"
        
        self.addChild(ng)
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        //        println(self.movePuririn)
        //        println(self.firstPoint)
        
        for touch in (touches as! Set<UITouch>) {
            
            var name = nodeAtPoint(touch.locationInNode(self)).name
            
            if name == "StartGame" {
                
                var transition = SKTransition.doorsOpenHorizontalWithDuration(0.5)
                var scene = LevelSelector(size:self.size)
                scene.scaleMode = .AspectFill
                self.removeFromParent()
                self.scene!.view?.presentScene(scene, transition: transition)
                
            }

        }
    }
   
}
