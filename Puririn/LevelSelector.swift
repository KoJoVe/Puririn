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
    
    var textures:[String: SKTexture]?
    
    var musicPlayer:AVAudioPlayer?
    var audioPlayer = AVAudioPlayer()
    var printCounter = 0
    var galaxylevel: Int?
    var openGalaxy = -1
    var animating = false
    var newGalaxy = -1
    
    var circleRadiusMax: CGFloat = 0
    var levelSize: CGFloat = 0
    var radiusDecay: CGFloat = 0
    var nLevels: Array<Int> = [20,14,9,6,1]
    
    var levelsArray: Array<SKSpriteNode> = []
    var galaxies: Array<SKSpriteNode> = []
    var spaces: Array<SKSpriteNode> = []
    var texts: Array<SKSpriteNode> = []
    var textArray: Array<SKLabelNode> = []
    var percentages: Array<SKLabelNode> = []
    var blArrays: Array<SKSpriteNode> = []
    
    var expansionSpeed = 0.2
    var alphaOutLong = SKAction.fadeAlphaTo(0, duration: 2.0)
    var alphaOut = SKAction.fadeAlphaTo(0, duration: 0.2)
    var alphaOutQuick = SKAction.fadeAlphaTo(0, duration: 0.1)
    var alphaText = SKAction.fadeAlphaTo(0.7, duration: 0.2)
    var alphaFull = SKAction.fadeAlphaTo(1, duration: 0.2)
    
    var y1: CGFloat = 0
    var y2: CGFloat = 0
    
    var galaxyPoint: CGPoint?
        
    override func didMoveToView(view: SKView) {
        
        animating = true
        
        self.backgroundColor = UIColor.whiteColor()
        
        if(musicPlayer == nil) {
            var music = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("PuririnTheme", ofType: "mp3")!)
            //println(alertSound)
            
            var error:NSError?
            musicPlayer = AVAudioPlayer(contentsOfURL: music, error: &error)
            
        }
        
        if(musicPlayer!.playing == false) {
            musicPlayer!.prepareToPlay()
            musicPlayer!.volume = 0.25
            musicPlayer!.play()
        }
        
        var userLevel = UserLevel.getUserLevel() + 1
        
        levelSize = (self.frame.size.width/2)/CGFloat(nLevels.count)
        circleRadiusMax = (self.frame.size.width/2) - (levelSize/2) - 10
        radiusDecay = circleRadiusMax/CGFloat(nLevels.count-1)

        var ng = SKSpriteNode(imageNamed: "back_button")
        ng.size = CGSizeMake(ng.frame.size.width/6, ng.frame.size.height/6)
        y2 = (CGRectGetMidY(self.frame) - circleRadiusMax)/2 - 15//ng.size.height/2 + 10
        ng.position = CGPointMake(CGRectGetMidX(self.frame), y2)
        ng.name = "BackMenu"
        ng.zPosition = 1
        
        self.addChild(ng)
        
        drawNames()
        
        drawSpaces()
        
        drawGalaxies()
        
        let qualityOfServiceClass = QOS_CLASS_BACKGROUND
        let backgroundQueue = dispatch_get_global_queue(qualityOfServiceClass, 0)
        dispatch_async(backgroundQueue, {
            self.drawPercentages()
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.revealPercentages()
                if(self.newGalaxy != -1) {
                    self.revealGalaxy(self.newGalaxy)
                } else {
                    self.animating = false
                }
            })
        })
    }
    
    func revealGalaxy(n: Int) {
        
        blArrays[n-1].runAction(alphaOutLong, completion: {
            self.loadGalaxy(n)
            self.newGalaxy = -1
            self.blArrays[n-1].removeFromParent()
        })
        
    }
    
    func drawNames() {
        
        var tt0 = SKSpriteNode(imageNamed: "SelectGalaxy")
        var tty = (self.frame.size.height + (CGRectGetMidY(self.frame) + circleRadiusMax))/2 + 10
        tt0.size = CGSizeMake(tt0.frame.size.width/5, tt0.frame.size.height/5)
        y1 = tty
        tt0.position = CGPointMake(CGRectGetMidX(self.frame), y1)
        tt0.name = "Back"
        tt0.zPosition = 11
        
        texts.append(tt0)
        self.addChild(tt0)
        
        var tt1 = SKSpriteNode(imageNamed: "MilkyWay")
        tt1.size = CGSizeMake(tt1.frame.size.width/5, tt1.frame.size.height/5)
        tt1.position = CGPointMake(CGRectGetMidX(self.frame), tty)
        tt1.name = "Back"
        tt1.alpha = 0
        tt1.zPosition = 11
        
        texts.append(tt1)
        self.addChild(tt1)
        
        var tt2 = SKSpriteNode(imageNamed: "Puronmedra")
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
        var gi: CGFloat = (y1 - y2)/4 + y2
        var gs: CGFloat = (y1 - y2)/4
        
        var gl1 = SKSpriteNode(imageNamed: "Galaxy")
        var revolution1 = SKAction.rotateByAngle(CGFloat(-M_PI*2), duration: 150.0)
        var repeat1 = SKAction.repeatActionForever(revolution1)
        gl1.size = CGSizeMake(self.frame.size.width/gf, self.frame.size.width/gf)
        gl1.position = CGPointMake(gl1.size.width/2 + gd, gi)
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
        gl2.position = CGPointMake(self.frame.size.width - gl2.size.width/2 - gd, gi + gs)
        gl2.name = "Galaxy2"
        gl2.blendMode = SKBlendMode.Screen
        gl2.zPosition = 0
        
        galaxies.append(gl2)
        self.addChild(gl2)
        gl2.runAction(repeat2)
        
        var bl1 = SKSpriteNode(imageNamed: "Wat")
        bl1.size = CGSizeMake(self.frame.size.width/gf, self.frame.size.width/gf)
        bl1.position = CGPointMake(self.frame.size.width - gl2.size.width/2 - gd, gi + gs)
        bl1.name = "Back"
        bl1.zPosition = 1
        blArrays.append(bl1)
        
        if(UserLevel.getUserLevel() < 50 || newGalaxy == 1) {
            self.addChild(bl1)
        }
        
        var gl3 = SKSpriteNode(imageNamed: "Galaxy3")
        var revolution3 = SKAction.rotateByAngle(CGFloat(-M_PI*2), duration: 150.0)
        var repeat3 = SKAction.repeatActionForever(revolution3)
        gl3.size = CGSizeMake(self.frame.size.width/gf, self.frame.size.width/gf)
        gl3.position = CGPointMake(gl3.size.width/2 + gd, gi + gs*2)
        gl3.name = "Galaxy3"
        gl3.blendMode = SKBlendMode.Screen
        gl3.zPosition = 0
        
        galaxies.append(gl3)
        self.addChild(gl3)
        gl3.runAction(repeat3)
        
        var bl2 = SKSpriteNode(imageNamed: "Wat")
        bl2.size = CGSizeMake(self.frame.size.width/gf, self.frame.size.width/gf)
        bl2.position = CGPointMake(gl3.size.width/2 + gd, gi + gs*2)
        bl2.name = "Back"
        bl2.zPosition = 1
        blArrays.append(bl2)
        
        if(UserLevel.getUserLevel() < 100 || newGalaxy == 2) {
            self.addChild(bl2)
        }
    }
    
    func drawPercentages() {
        
        var p1 = SKLabelNode(text: "\(UserLevel.getGalaxyPercent(0))%")
        p1.fontSize = 20
        p1.fontName = "HelveticaNeue-Bold"
        p1.fontColor = UIColor.whiteColor()
        p1.position = CGPointMake(galaxies[0].position.x, galaxies[0].position.y - galaxies[0].size.height/2 - 15)
        p1.name = "Back"
        p1.alpha = 0
        p1.zPosition = 3
        
        percentages.append(p1)
        self.addChild(p1)
        
        var p2 = SKLabelNode(text: "\(UserLevel.getGalaxyPercent(1))%")
        p2.fontSize = 20
        p2.fontName = "HelveticaNeue-Bold"
        p2.fontColor = UIColor.whiteColor()
        p2.position = CGPointMake(galaxies[1].position.x, galaxies[1].position.y - galaxies[1].size.height/2 - 25)
        p2.name = "Back"
        p2.alpha = 0
        p2.zPosition = 3
    
        percentages.append(p2)
        self.addChild(p2)
        
        var p3 = SKLabelNode(text: "\(UserLevel.getGalaxyPercent(2))%")
        p3.fontSize = 20
        p3.fontName = "HelveticaNeue-Bold"
        p3.fontColor = UIColor.whiteColor()
        p3.position = CGPointMake(galaxies[2].position.x, galaxies[2].position.y - galaxies[2].size.height/2 - 25)
        p3.name = "Back"
        p3.alpha = 0
        p3.zPosition = 3
    
        percentages.append(p3)
        self.addChild(p3)
        
    }
    
    func revealPercentages() {
        for var i=0; i<3; i++ {
            percentages[i].runAction(alphaFull)
        }
    }
    
    func drawLevels(galaxy: Int) {
        
        printCounter = 0 + (50 * galaxy)
        
        var texture = SKTexture(imageNamed: "BallOk")
        var texture2 = SKTexture(imageNamed: "Star0")
        var texture3 = SKTexture(imageNamed: "Star1")
        var texture4 = SKTexture(imageNamed: "Star2")
        var texture5 = SKTexture(imageNamed: "Star3")
        
        for var i = 0; i < nLevels.count; ++i {
            
            var x = CGRectGetMidX(self.frame)
            var y = CGRectGetMidY(self.frame) + circleRadiusMax - (radiusDecay*CGFloat(i))
            var angle = CGFloat(-2*M_PI)/CGFloat(nLevels[i])
            
            for var j = 0; j < nLevels[i]; ++j {
                
                var drawPoint = rotatePoint(CGRectGetMidX(self.frame), cY: CGRectGetMidY(self.frame), angle: Float(angle*CGFloat(j)), pX: x, pY: y)
                
                var level: SKSpriteNode
                
                var stars = UserLevel.getLevelStars(printCounter)
                
                if(stars <= 1) {
                    level = SKSpriteNode(texture: texture2)
                } else if (stars == 2) {
                    level = SKSpriteNode(texture: texture3)
                } else if (stars == 3) {
                    level = SKSpriteNode(texture: texture4)
                } else {
                    level = SKSpriteNode(texture: texture5)
                }
                
                level.size = CGSizeMake(levelSize, levelSize)
                level.position = CGPointMake(drawPoint.x, drawPoint.y)
                level.name = String(printCounter)
                level.alpha = 0
                level.zPosition = 4
                
                self.addChild(level)
                //level.runAction(alphaFull)
                levelsArray.append(level)
                
                var levelt = SKLabelNode(text: "\(printCounter + 1)")
                levelt.fontSize = 16
                levelt.alpha = 0
                levelt.fontName = "HelveticaNeue-Bold"
                levelt.fontColor = UIColor.blackColor()
                levelt.position = CGPointMake(drawPoint.x, drawPoint.y)
                levelt.name = String(printCounter)
                levelt.zPosition = 4
                
                self.addChild(levelt)
                //levelt.runAction(alphaText)
                textArray.append(levelt)
                
                if(!(UserLevel.getUserLevel() >= (printCounter))) {
                    level.hidden = true
                    levelt.hidden = true
                }
                
                printCounter += 1
                
            }
        }
    }
    
    func loadGalaxy(number: Int) {
        
        var resize = SKAction.resizeToWidth(self.frame.size.width, height: self.frame.size.width, duration: expansionSpeed)
        var move = SKAction.moveTo(CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame)), duration: expansionSpeed)
        
        animating = true
        
        drawLevels(number)
        
        openGalaxy = number
        galaxyPoint = CGPointMake(galaxies[number].position.x, galaxies[number].position.y)
        
        spaces[number].runAction(alphaFull)
        texts[number + 1].runAction(alphaFull)
        texts[0].runAction(alphaOut)
        
        for var i=0; i<3; i++ {
            percentages[i].runAction(alphaOut)
        }
        
        for var i=0; i<2; i++ {
            blArrays[i].runAction(alphaOut)
        }
        
        for var i=0; i<3; i++ {
            
            if(i != number) {
                galaxies[i].runAction(alphaOutQuick)
            }
            
        }
        
        galaxies[number].zPosition = 2
        galaxies[number].runAction(resize)
        galaxies[number].runAction(move, completion: {
            self.animating = false
            if(self.openGalaxy != -1) {
                for l in self.levelsArray {
                    l.runAction(self.alphaFull)
                }
                for l in self.textArray {
                    l.runAction(self.alphaFull)
                }
            }
        })
        
    }
    
    
    func closeGalaxy() {
        
        var resize = SKAction.resizeToWidth(self.frame.size.width/2.25, height: self.frame.size.width/2.25, duration: expansionSpeed)
        var move = SKAction.moveTo(galaxyPoint!, duration: expansionSpeed)
        
        animating = true
        
        for var i=0; i<2; i++ {
            blArrays[i].runAction(alphaFull)
        }
        for var i=0; i<3; i++ {
            percentages[i].runAction(alphaFull)
        }
        for var i=0; i<3; i++ {
            galaxies[i].runAction(alphaFull)
        }
        for var i=0; i<3; i++ {
            texts[i + 1].runAction(alphaOut)
        }
        for var i=0; i<2; i++ {
            spaces[i + 1].runAction(alphaOut)
        }
        for l in levelsArray {
            l.runAction(alphaOutQuick, completion:{
                l.removeFromParent()
            })
        }
        for l in textArray {
            l.runAction(alphaOutQuick, completion:{
                l.removeFromParent()
            })
        }
        
        texts[0].runAction(alphaFull)
        
        var g = openGalaxy
        
        galaxies[openGalaxy].runAction(resize)
        galaxies[openGalaxy].runAction(move, completion: {
            self.animating = false
            self.galaxies[g].zPosition = 0
        })
        
        openGalaxy = -1
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch in (touches as! Set<UITouch>) {
            
            var theName = nodeAtPoint(touch.locationInNode(self)).name
            
            if(animating == false) {
            
                if(theName != nil && theName == "BackMenu") {
                    
                    playSound()
                    
                    if(openGalaxy == -1) {
                        
                        var transition = SKTransition.fadeWithDuration(1)
                        var scene = StartScreen(size:self.size)
                        scene.musicPlayer = musicPlayer

                        self.removeAllActions()
                        self.scene!.view?.presentScene(scene, transition: transition)
                        
                    } else {
                        
                        closeGalaxy()
                   
                    }
                
                } else if(theName != nil && (theName == "Galaxy1" || theName == "Galaxy2" || theName == "Galaxy3")) {
                    
                    playSound()
                    
                    if(theName == "Galaxy1" && openGalaxy == -1) {
                        loadGalaxy(0)
                    }
                    if(theName == "Galaxy2" && openGalaxy == -1 && UserLevel.getUserLevel() >= 50 ) {
                        loadGalaxy(1)
                    }
                    if(theName == "Galaxy3" && openGalaxy == -1 && UserLevel.getUserLevel() >= 100 ) {
                        loadGalaxy(2)
                    }
                    
                } else if(theName != nil && theName != "Back") {
                 
                    if(UserLevel.getUserLevel() >= (theName!.toInt()!)) {
                        
                        playSound()
                        
                        var theNumber = theName!.toInt()!
                        var transition = SKTransition.fadeWithDuration(1)
                        var scene = GameScene(size:self.size)
                        
                        scene.musicPlayer = musicPlayer
                        scene.level = theNumber
                        scene.levelMatrix = LevelMatrixes.getMatrixLevel(theNumber)
                        
                        self.removeAllActions()
                        self.scene!.view?.presentScene(scene, transition: transition)
                        
                    }
                }
            }
        }
    }
    
    override func willMoveFromView(view: SKView) {
        for child in self.children {
            child.removeFromParent()
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
    
    func doVolumeFade()
    {
        if (musicPlayer!.volume > 0.01) {
            musicPlayer!.volume = musicPlayer!.volume - 0.03
            NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doVolumeFade"), userInfo: nil, repeats: false)
        } else {
            // Stop and get the sound ready for playing again
            musicPlayer!.stop()
            musicPlayer!.currentTime = 0
            musicPlayer!.prepareToPlay()
            musicPlayer!.volume = 0.3
        }
    }
}