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
        
        self.backgroundColor = UIColor(red: 204, green: 231, blue: 235, alpha: 0.73)
        
        var bc = SKSpriteNode(imageNamed: "Background")
        bc.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))

        self.addChild(bc)
        
        var userLevel = 1
        var nLevels = 40
    
        var espacoVer:CGFloat = 10
        
        var levelsByLine:CGFloat = 5
        
        var lines = CGFloat(nLevels)/levelsByLine
        
        var diam = (self.frame.size.height - 100)/lines
        
        var offset:CGFloat = (self.frame.size.width - levelsByLine*diam)/2
        
        var line = 0
        var n = 0
        
        var spaceVer = CGFloat((self.frame.size.height - (diam*4))/6)
        
        for var k=0; k<nLevels; k++ {
            
            var size = CGSizeMake(diam, diam)
            
            var x = CGFloat(n)*diam + diam/2 + offset
            var y = self.frame.size.height - (CGFloat(line)*diam + diam/2 + espacoVer)
            
            var text = SKLabelNode(text: "\(k+1)")
            text.position = CGPoint(x: x, y: y - 10)
            text.fontName = "Sigma Five Marquee Bold"
            text.fontColor = SKColor.whiteColor()
            
            var level = SKSpriteNode(texture: SKTexture(imageNamed: "BallLock"), color: nil, size: size)
            if(k<userLevel) {
               level = SKSpriteNode(texture: SKTexture(imageNamed: "BallOk"), color: nil, size: size)
            }
            level.position = CGPoint(x: x, y: y)
            level.name = "\(k)"
            self.addChild(level)
            self.addChild(text)
            
            n++
            if(n>=Int(levelsByLine)) {
                n = 0
                line++
            }
            
        }
        
        var ng = SKSpriteNode(imageNamed: "back_button")
        ng.size = CGSizeMake(ng.frame.size.width/6, ng.frame.size.height/6)
        ng.position = CGPointMake(CGRectGetMidX(self.frame), 30 + ng.frame.size.height/2)
        ng.name = "BackMenu"
        
        self.addChild(ng)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch in (touches as! Set<UITouch>) {
            
            var theName = nodeAtPoint(touch.locationInNode(self)).name
            
            if theName != nil {
                
                if(theName == "BackMenu") {
                    
                    var transition = SKTransition.doorsCloseHorizontalWithDuration(0.5)
                    var scene = StartScreen(size:self.size)
                    scene.scaleMode = .AspectFill
                    self.removeFromParent()
                    self.scene!.view?.presentScene(scene, transition: transition)
                
                } else {
                  
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
    
}