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
    var openGalaxy = -1
    
    var circleRadiusMax: CGFloat = 0
    var levelSize: CGFloat = 0
    var radiusDecay: CGFloat = 0
    var nLevels: Array<Int> = [20,14,9,6,1]
    
    var levelsArray: Array<SKSpriteNode> = []
    var galaxies: Array<SKSpriteNode> = []
    var spaces: Array<SKSpriteNode> = []
    var texts: Array<SKSpriteNode> = []
    var textArray: Array<SKLabelNode> = []
    
    var alphaOut = SKAction.fadeAlphaBy(0, duration: 1.0)
    var alphaText = SKAction.fadeAlphaBy(0.7, duration: 1.0)
    var alphaFull = SKAction.fadeAlphaBy(1, duration: 1.0)
    
    var galaxyPoint: CGPoint?
        
    override func didMoveToView(view: SKView) {
        
        self.backgroundColor = UIColor.whiteColor()
        
        var userLevel = UserLevel.getUserLevel() + 1
        
        levelSize = (self.frame.size.width/2)/CGFloat(nLevels.count)
        circleRadiusMax = (self.frame.size.width/2) - (levelSize/2) - 10
        radiusDecay = circleRadiusMax/CGFloat(nLevels.count-1)
        
        drawNames()
        
        drawSpaces()

        drawGalaxies()

        var ng = SKSpriteNode(imageNamed: "back_button")
        ng.size = CGSizeMake(ng.frame.size.width/6, ng.frame.size.height/6)
        ng.position = CGPointMake(CGRectGetMidX(self.frame), ng.size.height/2 + 10)
        ng.name = "BackMenu"
        ng.zPosition = 1
        
        self.addChild(ng)
        
    }
    
    func drawNames() {
        
        var tt1 = SKSpriteNode(imageNamed: "LostGalaxy")
        var tty = (self.frame.size.height + (CGRectGetMidY(self.frame) + circleRadiusMax))/2 + 10
        tt1.size = CGSizeMake(tt1.frame.size.width/5, tt1.frame.size.height/5)
        tt1.position = CGPointMake(CGRectGetMidX(self.frame), tty)
        tt1.name = "Back"
        tt1.alpha = 0
        tt1.zPosition = 11
        
        texts.append(tt1)
        self.addChild(tt1)
        
        var tt2 = SKSpriteNode(imageNamed: "LostGalaxy")
        tt2.size = CGSizeMake(tt2.frame.size.width/5, tt2.frame.size.height/5)
        tt2.position = CGPointMake(CGRectGetMidX(self.frame), tty)
        tt2.name = "Back"
        tt2.alpha = 0
        tt2.zPosition = 11
        
        texts.append(tt2)
        self.addChild(tt2)
        
        var tt3 = SKSpriteNode(imageNamed: "LostGalaxy")
        tt3.size = CGSizeMake(tt3.frame.size.width/5, tt3.frame.size.height/5)
        tt3.position = CGPointMake(CGRectGetMidX(self.frame), tty)
        tt3.name = "Back"
        tt3.alpha = 0
        tt3.zPosition = 11
        
        texts.append(tt3)
        self.addChild(tt3)
    }
    
    func drawSpaces() {
        
        var bc1 = SKSpriteNode(imageNamed: "Space")
        var h = (self.frame.size.width*bc1.size.height)/bc1.size.width
        bc1.size = CGSizeMake(self.frame.size.width, h)
        bc1.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        bc1.name = "Back"
        bc1.zPosition = 0
        
        spaces.append(bc1)
        self.addChild(bc1)
        
        var bc2 = SKSpriteNode(imageNamed: "Space2")
        bc2.size = CGSizeMake(self.frame.size.width, h)
        bc2.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        bc2.name = "Back"
        bc2.alpha = 0
        bc2.zPosition = 0
        
        spaces.append(bc2)
        self.addChild(bc2)
        
        var bc3 = SKSpriteNode(imageNamed: "Space3")
        bc3.size = CGSizeMake(self.frame.size.width, h)
        bc3.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        bc3.name = "Back"
        bc3.alpha = 0
        bc3.zPosition = 0
        
        spaces.append(bc3)
        self.addChild(bc3)
    }
    
    func drawGalaxies() {
        
        var gf: CGFloat = 2.25
        var gd: CGFloat = 25.0
        var gi: CGFloat = 100.0
        var gs: CGFloat = 150.0
        
        var gl1 = SKSpriteNode(imageNamed: "Galaxy")
        var revolution1 = SKAction.rotateByAngle(CGFloat(-M_PI*2), duration: 150.0)
        var repeat1 = SKAction.repeatActionForever(revolution1)
        gl1.size = CGSizeMake(self.frame.size.width/gf, self.frame.size.width/gf)
        gl1.position = CGPointMake(gl1.size.width/2 + gd, gl1.size.width/2 + gi)
        gl1.name = "Galaxy1"
        gl1.blendMode = SKBlendMode.Screen
        gl1.zPosition = 0
        
        galaxies.append(gl1)
        self.addChild(gl1)
        gl1.runAction(repeat1)
        
        var gl2 = SKSpriteNode(imageNamed: "Galaxy2")
        var revolution2 = SKAction.rotateByAngle(CGFloat(M_PI*2), duration: 150.0)
        var repeat2 = SKAction.repeatActionForever(revolution2)
        gl2.size = CGSizeMake(self.frame.size.width/gf, self.frame.size.width/gf)
        gl2.position = CGPointMake(self.frame.size.width - gl2.size.width/2 - gd, gl2.size.width/2 + gi + gs)
        gl2.name = "Galaxy2"
        gl2.blendMode = SKBlendMode.Screen
        gl2.zPosition = 0
        
        galaxies.append(gl2)
        self.addChild(gl2)
        gl2.runAction(repeat2)
        
        var gl3 = SKSpriteNode(imageNamed: "Galaxy3")
        var revolution3 = SKAction.rotateByAngle(CGFloat(-M_PI*2), duration: 150.0)
        var repeat3 = SKAction.repeatActionForever(revolution3)
        gl3.size = CGSizeMake(self.frame.size.width/gf, self.frame.size.width/gf)
        gl3.position = CGPointMake(gl3.size.width/2 + gd, gl3.size.width/2 + gi + gs*2)
        gl3.name = "Galaxy3"
        gl3.blendMode = SKBlendMode.Screen
        gl3.zPosition = 0
        
        galaxies.append(gl3)
        self.addChild(gl3)
        gl3.runAction(repeat3)
    }
    
    func drawLevels(galaxy: Int) {
        
        printCounter = 0 + (50 * galaxy)
        
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
                level.alpha = 0
                level.zPosition = 2
                
                self.addChild(level)
                level.runAction(alphaFull)
                
                var levelt = SKLabelNode(text: "\(printCounter + 1)")
                levelt.fontSize = 16
                levelt.alpha = 0
                levelt.fontName = "HelveticaNeue-Bold"
                levelt.fontColor = UIColor.blackColor()
                levelt.position = CGPointMake(drawPoint.x, drawPoint.y - 7)
                levelt.name = String(printCounter)
                levelt.zPosition = 2
                
                self.addChild(levelt)
                levelt.runAction(alphaText)
                
                if(!(UserLevel.getUserLevel() >= (printCounter))) {
                    level.hidden = true
                    levelt.hidden = true
                }
                
                printCounter += 1
                
            }
        }
    }
    
    func loadGalaxy(number: Int) {
        
        var resize = SKAction.resizeToWidth(self.frame.size.width, height: self.frame.size.width, duration: 1.0)
        var move = SKAction.moveTo(CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidX(self.frame)), duration: 1.0)
        
        galaxyPoint = CGPointMake(galaxies[number].position.x, galaxies[number].position.y)
        
    }
    
    func closeGalaxy() {
        
        var resize = SKAction.resizeToWidth(self.frame.size.width/2, height: self.frame.size.width/2, duration: 1.0)
        var move = SKAction.moveTo(galaxyPoint!, duration: 1.0)
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch in (touches as! Set<UITouch>) {
            
            var theName = nodeAtPoint(touch.locationInNode(self)).name
            
            if(theName != nil && theName == "BackMenu") {
                
                playSound()
                
                if(openGalaxy == -1) {
                    
                    var transition = SKTransition.doorsCloseHorizontalWithDuration(0.5)
                    var scene = StartScreen(size:self.size)
                    
                    scene.scaleMode = .AspectFill
                    
                    for child in self.children {
                        child.removeFromParent()
                    }
                    
                    self.removeAllActions()
                    self.removeFromParent()
                    self.scene!.view?.presentScene(scene, transition: transition)
                    
                } else {
                    
                    closeGalaxy()
               
                }
                

            
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
                    
                    self.removeAllActions()
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