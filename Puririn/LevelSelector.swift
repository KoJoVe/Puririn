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
        
        var userLevel = 30
        var nLevels = 40
        
        var espacoHor:CGFloat = 40
        var espacoVer:CGFloat = 20
        
        var diam = (self.frame.size.width - espacoHor)/6
        
        var line = 0
        var n = 0
        
        var spaceVer = CGFloat((self.frame.size.height - (diam*4))/6)
        
        for var k=0; k<nLevels; k++ {
            
            var size = CGSizeMake(diam, diam)
            
            var x = CGFloat(n)*diam + diam/2 + espacoHor/2
            var y = self.frame.size.height - (CGFloat(line)*diam + diam/2 + espacoVer)
            
//            var text = SKLabelNode(text: "1")
//            text.position = CGPoint(x: diam/2, y: y)
//            text.fontColor = SKColor.whiteColor()
            
            var level = SKSpriteNode(texture: SKTexture(imageNamed: "BallLock"), color: nil, size: size)
            level.position = CGPoint(x: x, y: y)
            level.name = "\(k)"
            self.addChild(level)
            //self.addChild(text)
            
            n++
            if(n>=6) {
                n = 0
                line++
            }
            
        }
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch in (touches as! Set<UITouch>) {
            
            var theName = nodeAtPoint(touch.locationInNode(self)).name
            
            if theName != nil {
                
                var transition = SKTransition.doorsOpenHorizontalWithDuration(0.5)
                var scene = GameScene(size:self.size)
                scene.scaleMode = .AspectFill
                var theNumber = theName!.toInt()!
                scene.levelMatrix = LevelMatrixes.getMatrixLevel(theNumber)
                self.removeFromParent()
                self.scene!.view?.presentScene(scene, transition: transition)
                
            }
            
        }
        
    }
    
}