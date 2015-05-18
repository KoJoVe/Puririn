//
//  Selector.swift
//  Puririn
//
//  Created by Victor Souza on 5/2/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit
import AVFoundation


class LevelSelector: SKScene {
    
    var audioPlayer = AVAudioPlayer()
    var printCounter = 0
    var galaxylevel: Int?
    
    override func didMoveToView(view: SKView) {
        
        self.backgroundColor = UIColor.whiteColor()
        
        UserLevel.initializeArray()
        
        var userLevel = UserLevel.getUserLevel() + 1

        var nLevels = [20,14,9,6,1]//[16,16,9,8,1]
        
        var levelSize: CGFloat = (self.frame.size.width/2)/CGFloat(nLevels.count)
        var circleRadiusMax: CGFloat = (self.frame.size.width/2) - (levelSize/2) - 10
        var radiusDecay = circleRadiusMax/CGFloat(nLevels.count-1)
    
        for var i = 0; i < nLevels.count; ++i {
            
            var x = CGRectGetMidX(self.frame)
            var y = CGRectGetMidY(self.frame) + circleRadiusMax - (radiusDecay*CGFloat(i))
            var angle = CGFloat(-2*M_PI)/CGFloat(nLevels[i])
            
            for var j = 0; j < nLevels[i]; ++j {
                
                var drawPoint = rotatePoint(CGRectGetMidX(self.frame), cY: CGRectGetMidY(self.frame), angle: Float(angle*CGFloat(j)), pX: x, pY: y)
                
                var level = SKSpriteNode(imageNamed: "BallOk")
                level.size = CGSizeMake(levelSize, levelSize)
                level.position = CGPointMake(drawPoint.x, drawPoint.y)
                level.name = String(printCounter)
                level.zPosition = 2
                
                self.addChild(level)
                
                var levelt = SKLabelNode(text: "\(printCounter + 1)")
                levelt.fontSize = 16
                levelt.alpha = 0.7
                levelt.fontName = "HelveticaNeue-Bold"
                levelt.fontColor = UIColor.blackColor()
                levelt.position = CGPointMake(drawPoint.x, drawPoint.y - 7)
                levelt.name = String(printCounter)
                levelt.zPosition = 2
                
                self.addChild(levelt)
                
                if(!(UserLevel.getUserLevel() >= (printCounter))) {
                    level.hidden = true
                    levelt.hidden = true
                }
                
                printCounter += 1
                
            }
        }
        
        var tt = SKSpriteNode(imageNamed: "LostGalaxy")
        var tty = (self.frame.size.height + (CGRectGetMidY(self.frame) + circleRadiusMax))/2 + 10
        tt.size = CGSizeMake(tt.frame.size.width/5, tt.frame.size.height/5)
        tt.position = CGPointMake(CGRectGetMidX(self.frame), tty)
        tt.name = "Back"
        tt.zPosition = 11
        
        self.addChild(tt)
        
        var bc = SKSpriteNode(imageNamed: "Space3")
        var h = (self.frame.size.width*bc.size.height)/bc.size.width
        bc.size = CGSizeMake(self.frame.size.width, h)
        bc.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        bc.name = "Back"
        bc.zPosition = 0
        
        self.addChild(bc)
        
        var gl = SKSpriteNode(imageNamed: "Galaxy3")
        var revolution = SKAction.rotateByAngle(CGFloat(-M_PI*2), duration: 150.0)
        var repeat = SKAction.repeatActionForever(revolution)
        gl.size = CGSizeMake(self.frame.size.width, self.frame.size.width)
        gl.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        gl.name = "Back"
        gl.blendMode = SKBlendMode.Screen
        gl.zPosition = 0
        
        self.addChild(gl)
        gl.runAction(repeat)

        var ng = SKSpriteNode(imageNamed: "back_button")
        var ngy = (self.frame.size.height - (CGRectGetMidY(self.frame) + circleRadiusMax))/2 - 5
        ng.size = CGSizeMake(ng.frame.size.width/6, ng.frame.size.height/6)
        ng.position = CGPointMake(CGRectGetMidX(self.frame), ngy)
        ng.name = "BackMenu"
        ng.zPosition = 1
        
        self.addChild(ng)
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch in (touches as! Set<UITouch>) {
            
            var theName = nodeAtPoint(touch.locationInNode(self)).name
            
            if(theName != nil && theName == "BackMenu") {
                
                playSound()
                
                var transition = SKTransition.doorsCloseHorizontalWithDuration(0.5)
                var scene = StartScreen(size:self.size)
                
                scene.scaleMode = .AspectFill
                
                for child in self.children {
                    child.removeFromParent()
                }
                
                self.removeFromParent()
                self.scene!.view?.presentScene(scene, transition: transition)
            
            } else if(theName != nil && theName != "Back") {
                
                if(UserLevel.getUserLevel() >= (theName!.toInt()!)) {
                
                    playSound()
                    println(theName!.toInt()!)
                    
                    var theNumber = theName!.toInt()!
                    var transition = SKTransition.doorsOpenHorizontalWithDuration(0.5)
                    var scene = GameScene(size:self.size)
                    
                    scene.scaleMode = .AspectFill
                    scene.level = theNumber
                    scene.levelMatrix = LevelMatrixes.getMatrixLevel(theNumber)
                    
                    self.removeFromParent()
                    self.scene!.view?.presentScene(scene, transition: transition)
                    
                }
            }
        }
    }
    
    func rotatePoint(cX: CGFloat,cY: CGFloat,angle: Float,pX: CGFloat, pY: CGFloat) -> CGPoint {
        
        var s:CGFloat = CGFloat(sin(angle))
        var c:CGFloat = CGFloat(cos(angle))
        
        var newpX = pX
        var newpY = pY
        
        newpX = pX - cX
        newpY = pY - cY
        
        var xnew:CGFloat = newpX * c - newpY * s
        var ynew:CGFloat = newpX * s + newpY * c
        
        newpX = xnew + cX
        newpY = ynew + cY
        
        return CGPointMake(newpX, newpY)
        
    }
    
    func playSound() {
        
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ok", ofType: "aif")!)
        var error:NSError?
        
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
    }
}