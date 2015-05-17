//
//  GameScene.swift
//  Puririn
//
//  Created by Joao Nassar Galante Guedes on 02/05/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit
import AVFoundation

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var maxLevels = 40
    
    var movePuririn:Bool!
    var firstPoint = true
    var restartBool = false
    var puririnTouched: Bool!
    
    var audioPlayer = AVAudioPlayer()
    var shotPlay = AVAudioPlayer()
    var bouncePlay = AVAudioPlayer()
    
    var level: Int!
    var levelMatrix: Array<Array<Int>> = []
    
    var touchLocation = CGPoint()
    
    var wolrd: Int?
    
    var puririn: Puririn!
    var vortex: Vortex!
    var star: Star!
    
    var background = SKSpriteNode()
    
    var sizeClean = CGFloat(0)
    
    var wayPoints: [CGPoint] = []
    
    var line = SKShapeNode()
    
    var speedForce: CGVector = CGVector()
    
    var angularVelocityPuririn = 0
    var dx = CGFloat(0)
    var dy = CGFloat(0)
    
    override func didMoveToView(view: SKView) {
        
        var bounceSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("bounce", ofType: "wav")!)
        var error:NSError?
        
        bouncePlay = AVAudioPlayer(contentsOfURL: bounceSound, error: &error)

        self.backgroundColor = UIColor.whiteColor()
        self.newGame()
    }
    
    func newGame() {
        
        self.background = SKSpriteNode(imageNamed: "fundo_level_cleared")
        self.background.zPosition = -2
        self.background.size = CGSize(width: self.size.width, height: self.size.height)
        self.background.anchorPoint = CGPoint(x: 0, y: 0)
        self.background.hidden = false
        self.addChild(self.background)
        
        var screenWidth = self.frame.size.width
        var screenHeight = self.frame.size.height
        
        var nWidth:CGFloat = 7
        
        var nHeight:CGFloat = 12
        
        var matrix:Array<Array<NSDictionary>> = []
        
        var sSize = (screenHeight-100)/nHeight
        
        var offset = (screenWidth - (sSize*nWidth))/2
        var offset2: CGFloat = 30
        
        var hoffset = (screenHeight - (sSize*nHeight)) - offset2

        var bc = SKSpriteNode(imageNamed: "BackBG")
        bc.size = CGSizeMake(self.frame.size.width, self.frame.size.height)
        bc.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        bc.name = "Back"
        bc.zPosition = -1
        
        self.addChild(bc)
        
        var extraSize: CGFloat = 74
        var extraSize2: CGFloat = 130
        var insideBc = SKSpriteNode(imageNamed: "FrontBG")
        insideBc.size = CGSizeMake(nWidth*sSize,nHeight*sSize)
        insideBc.position = CGPointMake(offset + insideBc.size.width/2, screenHeight - (insideBc.size.height/2) - offset2)
        insideBc.name = "Fundo"
        insideBc.zPosition = 0
        
        self.addChild(insideBc)
        
        var prop: CGFloat = nWidth*sSize/330.75
        var wallthick:CGFloat = 32 * prop
        var wall = SKSpriteNode(imageNamed: "WallBG")
        wall.size = CGSizeMake(nWidth*sSize + (wallthick*2),nHeight*sSize + (wallthick*2))
        wall.position = CGPointMake(offset + wall.size.width/2 - wallthick, screenHeight - (wall.size.height/2) - offset2 + wallthick)
        wall.name = "Fundo"
        wall.zPosition = 99
        
//        offset2 = 32 //30
//        
//        var prop: CGFloat = nWidth*sSize/330.75
//        var wallthick:CGFloat = 16 * prop //32
//        var wall = SKSpriteNode(imageNamed: "WallBG3")
//        wall.size = CGSizeMake(nWidth*sSize + (wallthick*2),nHeight*sSize + (wallthick*2))
//        wall.position = CGPointMake(offset + wall.size.width/2 - wallthick, screenHeight - (wall.size.height/2) - offset2 + wallthick)
//        wall.name = "Fundo"
//        wall.zPosition = 99
        
        self.addChild(wall)
        
        self.removeAllActions()
        
        self.physicsWorld.gravity = CGVectorMake(0.0, 0.0)
        self.physicsWorld.contactDelegate = self
        self.view!.showsPhysics = false
        
        self.movePuririn = true
        self.firstPoint = true
        self.puririnTouched = false
        self.speedForce = CGVector(dx: 0, dy: 0)
        self.dx = CGFloat(0)
        self.dy = CGFloat(0)
        self.wayPoints.removeAll(keepCapacity: false)
        self.angularVelocityPuririn = 0

        for var i=0; i<Int(nWidth); i++ {
            
            var lineArray:Array<NSDictionary> = []
            
            for var k=0; k<Int(nHeight); k++ {
                
                var x = CGFloat(i)*sSize + offset
                var y = CGFloat(Int(nHeight-1)-k)*sSize + hoffset
                
                var dictionary = ["X": x, "Y": y]
                
                lineArray.append(dictionary)
            }
            matrix.append(lineArray)
        }
        
        for var i=0; i<Int(nWidth); i++ {
            
            for var k=0; k<Int(nHeight); k++ {
                
                if(levelMatrix[k][i] == 0) {
                    //Do Nothing
                    
                } else if(levelMatrix[k][i] == 1) {
                    //Draw Explosive
                    
                } else if(levelMatrix[k][i] == 2) {
                    //Draw Puririn
                    
                    var puririnSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    
                    self.sizeClean = puririnSize
                    self.puririn = Puririn(size:puririnSize)
                    self.puririn.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    self.puririn.zPosition = 100
                    self.addChild(self.puririn)
                    
                } else if(levelMatrix[k][i] == 3) {
                    //Draw Vortex
                    
                    var puririnSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    var revolution = SKAction.rotateByAngle(CGFloat(M_PI*2), duration: 2.0)
                    var repeat = SKAction.repeatActionForever(revolution)
                    
                    self.vortex = Vortex(size:puririnSize)
                    self.vortex.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    self.vortex.runAction(repeat)
                    self.addChild(self.vortex)
                    
                } else if(levelMatrix[k][i] == 4) {
                    //Draw Star (Unused)
                    
                    var starSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    
                    self.star = Star(size: starSize)
                    self.star.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    self.addChild(self.star)
                    
                } else if(levelMatrix[k][i] == 5) {
                    //Draw Wall
                    
                    var starSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    var ball = Ball(size: starSize)
                    
                    ball.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    
                    self.addChild(ball)
                }
            }
        }
        
        //Edges
        
        var playable = CGRect(x: offset, y: hoffset, width: sSize*nWidth, height: sSize*nHeight)
        
        var borderBody = SKPhysicsBody(edgeLoopFromRect: playable)
        self.physicsBody = borderBody;
        self.physicsBody?.friction = 0.0
        self.physicsBody?.restitution = 0.8
        self.physicsBody?.linearDamping = 0.0
        self.physicsBody?.angularDamping = 0.0
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.categoryBitMask = 1 << 3
        
        //Buttons
        
        var exit = SKSpriteNode(imageNamed: "back_button")
        exit.size = CGSizeMake(exit.frame.size.width/7, exit.frame.size.height/7)
        exit.position = CGPointMake(CGRectGetMidX(self.frame) - 50, exit.frame.size.height/2)
        exit.name = "exit"
        exit.zPosition = 120
        self.addChild(exit)
        
        var restart = SKSpriteNode(imageNamed: "restart_button")
        restart.size = CGSizeMake(restart.frame.size.width/7, restart.frame.size.height/7)
        restart.position = CGPointMake(CGRectGetMidX(self.frame) + 50, restart.frame.size.height/2)
        restart.name = "restart"
        restart.zPosition = 120
        self.addChild(restart)
        
        //Trail
        
        let untypedEmitter : AnyObject = NSKeyedUnarchiver.unarchiveObjectWithFile(NSBundle.mainBundle().pathForResource("Trail", ofType: "sks")!)!;
        let emitter:SKEmitterNode = untypedEmitter as! SKEmitterNode;
        emitter.targetNode = self
        self.puririn.addChild(emitter)
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch in (touches as! Set<UITouch>) {
            
            var name = nodeAtPoint(touch.locationInNode(self)).name
            
            if name == "restart" {
                restart()
                self.restartBool = true
            }
            
            else if name == "exit" {
                self.exit()
            }
            
            else if name == "window" {
                self.nextStage()
            }
            
            else if name == "puririn" {
                if(self.puririnTouched==false) {
                    playSound("charge")    
                }
                self.puririnTouched = true
            }
        }
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch in (touches as! Set<UITouch>) {
            
            if self.movePuririn == true && self.puririnTouched == true  {
                
                self.touchLocation = touch.locationInNode(self)
                
                
                self.dx = (touch.locationInNode(self).x - self.puririn.position.x) * 140
                self.dy = (touch.locationInNode(self).y - self.puririn.position.y) * 140
                
                if self.dx > 0 {
                    self.angularVelocityPuririn = -15
                }
                else {
                    self.angularVelocityPuririn = 15
                }
                
                self.createPath()
                
            }
        }
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        if self.movePuririn == true && self.puririnTouched == true {
            
            self.puririn.physicsBody?.applyForce(self.speedForce)
            self.puririn.physicsBody?.angularVelocity = CGFloat(self.angularVelocityPuririn)
            
            playSound("shot")
            
            self.line.removeFromParent()
            
            self.firstPoint = true
            self.movePuririn = false
        }
        
        if self.restartBool == true {
            self.movePuririn = true
            self.restartBool = false
            
        }
    }
    
    func didBeginContact(contact: SKPhysicsContact) {
        
          //println("FAS")
        
//        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask {
//            
//            let firstNode = contact.bodyA.node as! SKSpriteNode
//            let secondNode = contact.bodyB.node as! SKSpriteNode
//            
//        }
//        
//        else if contact.bodyA.categoryBitMask > contact.bodyB.categoryBitMask {
//            
//            let firstNode = contact.bodyB.node as! SKSpriteNode
//            let secondNode = contact.bodyA.node as! SKSpriteNode
//            
//        }
        
        if ((contact.bodyA.categoryBitMask == 1<<0) &&
            (contact.bodyB.categoryBitMask == 1<<1)) ||
            ((contact.bodyA.categoryBitMask == 1<<1) &&
                (contact.bodyB.categoryBitMask == 1<<0)) {
                    
                playSound("vortex")
                
                var cleanPuririn = CleanPuririn(size: self.sizeClean)
                cleanPuririn.position = self.puririn.position
                cleanPuririn.zPosition = 10
                self.addChild(cleanPuririn)
                self.puririn.removeFromParent()
                
                var move = SKAction.moveTo(self.vortex.position, duration: 1.5)
                cleanPuririn.runAction(move)
                cleanPuririn.removeAllChildren()
                cleanPuririn.rotateAndShrink()
                
                var window = completeWindow(currentLevel:self.level+1,totalLevel:self.maxLevels)
                    
                var ww = window.size.width/4.3
                var wh = window.size.height/4.3
                    
                window.size = CGSizeMake(0, 0)
                window.position = CGPoint(x: CGRectGetMidX(self.frame),y: CGRectGetMidY(self.frame))
                window.zPosition = 101

                var showWindow = SKAction.runBlock({
                    
                    self.addChild(window)
                    self.background.zPosition = 100
                    self.background.hidden = false
                })
                    
                println(self.background.zPosition)
                var wait = SKAction.waitForDuration(1.5)
                var increase = SKAction.resizeToWidth(ww, height: wh, duration: 0.5)
                var sequence = SKAction.sequence([wait,showWindow])
                var sequence2 = SKAction.sequence([increase])
                self.runAction(sequence)
                window.runAction(sequence2)
                window.animateLabel()
        }
        
        else  {
                
                playSound("bounce")
                
        }
    }
    
    func createPath() {
        
        if self.firstPoint == true {
            
            self.wayPoints.removeAll(keepCapacity: false)
            self.wayPoints.append(self.puririn.position)
            self.wayPoints.append(self.touchLocation)
            self.firstPoint = false
        }
            
        else {
            self.line.removeFromParent()
            self.wayPoints.removeLast()
            self.wayPoints.append(self.touchLocation)
        }
        
        var linePath = CGPathCreateMutable()
        
        for var numberOfPoints = 0; numberOfPoints < wayPoints.count; ++numberOfPoints {
            let way = wayPoints[numberOfPoints]
            
            if numberOfPoints == 0 {
                CGPathMoveToPoint(linePath, nil, way.x, way.y)
            } else {
                CGPathAddLineToPoint(linePath, nil, way.x, way.y)
            }
            
            self.line = SKShapeNode(path: linePath)
            self.line.strokeColor = UIColor.whiteColor()
            self.line.lineWidth = 8
            self.line.zPosition = 10
            self.line.alpha = 0.45
            self.addChild(self.line)
            
            self.speedForce = CGVector(dx: self.dx, dy: self.dy)
        }
        
    }
    
    func restart() {
        
        for node in self.children {
            node.removeFromParent()
        }
        self.newGame()
        
    }
    
    func exit() {
        
        dispatch_async(dispatch_get_main_queue()) {
            () -> Void in
            
            var transition = SKTransition.doorsCloseHorizontalWithDuration(0.5)
            var scene = LevelSelector(size:self.size)
            scene.scaleMode = .AspectFill

            for child in self.children {
                child.removeFromParent()
            }

            self.removeFromParent()
            self.scene!.view?.presentScene(scene, transition: transition)
            
        }
        
    }
    
    func nextStage() {
        
        dispatch_async(dispatch_get_main_queue()) {
            () -> Void in
            
            var transition = SKTransition.doorsCloseHorizontalWithDuration(0.5)
            
            
            
            for child in self.children {
                child.removeFromParent()
            }
            
            if self.level + 1 < 40 {
                
                var scene = GameScene(size:self.size)
                scene.level = self.level + 1
                
                scene.scaleMode = .AspectFill
                
                if(UserLevel.getUserLevel()<scene.level) {
                    UserLevel.setUserLevel(scene.level)
                }
                
                scene.levelMatrix = LevelMatrixes.getMatrixLevel(scene.level)
                
                self.removeFromParent()
                self.scene!.view?.presentScene(scene, transition: transition)
            }
            
            else {
                
                var scene = StartScreen(size:self.size)
                scene.complete = true
                scene.scaleMode = .AspectFill
                
                self.removeFromParent()
                self.scene!.view?.presentScene(scene, transition: transition)
            }
        
        }
        
    }
    
    func playSound(sound: String) {
        
        if(sound=="vortex") {
            
            var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("vortex", ofType: "aiff")!)
            //println(alertSound)
            
            var error:NSError?
            audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
            audioPlayer.volume = 0.12
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        
        if(sound=="shot") {
            
            var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("shot", ofType: "wav")!)
            //println(alertSound)
            
            var error:NSError?
            shotPlay = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
            shotPlay.volume = 0.07
            shotPlay.prepareToPlay()
            shotPlay.play()
        }
        
        if(sound=="charge") {
            
            var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("charge", ofType: "wav")!)
            //println(alertSound)
            
            var error:NSError?
            shotPlay = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
            shotPlay.volume = 0.03
            shotPlay.prepareToPlay()
            shotPlay.play()
        }
        
        if(sound=="bounce") {
            
            if(!bouncePlay.playing) {
                bouncePlay.volume = 0.07
                bouncePlay.prepareToPlay()
                bouncePlay.play()
            }
            
        }
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
