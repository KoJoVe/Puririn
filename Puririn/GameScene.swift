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
    
    var movePuririn:Bool!
    var firstPoint = true
    var restartBool = false
    var puririnTouched: Bool!
    
    var audioPlayer = AVAudioPlayer()
    
    var levelMatrix: Array<Array<Int>> = []
    
    var touchLocation = CGPoint()
    
    var puririn: Puririn!
    var vortex: Vortex!
    var star: Star!
    
    var sizeClean = CGFloat(0)
    
    var wayPoints: [CGPoint] = []
    
    var line = SKShapeNode()
    
    var speedForce: CGVector = CGVector()
    
    var angularVelocityPuririn = 0
    var dx = CGFloat(0)
    var dy = CGFloat(0)
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = UIColor.whiteColor()
        self.newGame()
    }
    
    func newGame() {
        
        var bc = SKSpriteNode(imageNamed: "Metal")
        bc.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        bc.name = "Back"
        bc.zPosition = 0
        
        self.addChild(bc)
        
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
        
        var screenWidth = self.frame.size.width
        var screenHeight = self.frame.size.height
        
        var nWidth:CGFloat = 7
        
        var nHeight:CGFloat = 12
        
        var matrix:Array<Array<NSDictionary>> = []
        
        var sSize = (screenHeight-100)/nHeight
        
        var offset = (screenWidth - (sSize*nWidth))/2

        var hoffset = (screenHeight - (sSize*nHeight)) - 30
        
        var wall1 = SKSpriteNode(imageNamed: "leftwall")
        wall1.size = CGSizeMake(offset,(screenHeight-100+30))
        wall1.position = CGPointMake(wall1.size.width/2, screenHeight - wall1.size.height/2)
        wall1.name = "Left"
        wall1.zPosition = 13
        
        self.addChild(wall1)
        
        var wall2 = SKSpriteNode(imageNamed: "rightwall")
        wall2.size = CGSizeMake(offset,(screenHeight-100+30))
        wall2.position = CGPointMake(screenWidth - wall2.size.width/2, screenHeight - wall2.size.height/2)
        wall2.name = "Right"
        wall2.zPosition = 13
        
        self.addChild(wall2)
        
        var wall3 = SKSpriteNode(imageNamed: "topwall")
        wall3.size = CGSizeMake(screenWidth,30)
        wall3.position = CGPointMake(wall3.size.width/2, screenHeight - wall3.size.height/2)
        wall3.name = "Top"
        wall3.zPosition = 12
        
        self.addChild(wall3)
        
        var wall4 = SKSpriteNode(imageNamed: "cornerleft")
        wall4.size = CGSizeMake(offset,30)
        wall4.position = CGPointMake(wall4.size.width/2, screenHeight - wall4.size.height/2)
        wall4.name = "C1"
        wall4.zPosition = 14
        
        self.addChild(wall4)
        
        var wall5 = SKSpriteNode(imageNamed: "cornerright")
        wall5.size = CGSizeMake(offset,30)
        wall5.position = CGPointMake(screenWidth - wall5.size.width/2, screenHeight - wall5.size.height/2)
        wall5.name = "C2"
        wall5.zPosition = 14
        
        self.addChild(wall5)
        
        var wall6 = SKSpriteNode(imageNamed: "menubot")
        wall6.size = CGSizeMake(screenWidth,screenHeight - (screenHeight-100+30))
        wall6.position = CGPointMake(wall6.size.width/2, wall6.size.height/2)
        wall6.name = "Bot"
        wall6.zPosition = 11
        
        self.addChild(wall6)
        
        var parafuso1 = SKSpriteNode(imageNamed: "screw")
        parafuso1.size = CGSizeMake(offset,offset)
        parafuso1.position = CGPointMake(parafuso1.size.width/2, screenHeight - (screenHeight-100+30))
        parafuso1.name = "screw1"
        parafuso1.zPosition = 15
        
        self.addChild(parafuso1)
        
        var parafuso2 = SKSpriteNode(imageNamed: "screw")
        parafuso2.size = CGSizeMake(offset,offset)
        parafuso2.position = CGPointMake(screenWidth - parafuso2.size.width/2, screenHeight - (screenHeight-100+30))
        parafuso2.name = "screw2"
        parafuso2.zPosition = 15
        
        self.addChild(parafuso2)

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
                    //do nothing
                } else if(levelMatrix[k][i] == 1) {
                    //draw obstacle at matrix[i][k]["X"],matrix[i][k]["Y"]
                } else if(levelMatrix[k][i] == 2) {
                    
                    var puririnSize = sSize
                    self.sizeClean = puririnSize
                    
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    
                    self.puririn = Puririn(size:puririnSize)
                    self.puririn.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    self.puririn.zPosition = 11
                    self.addChild(self.puririn)
                    //println(self.puririn.physicsBody?.collisionBitMask)
                    
                } else if(levelMatrix[k][i] == 3) {
                    //draw vortex at matrix[i][k]["X"],matrix[i][k]["Y"]
                    
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
                    //draw star at matrix[i][k]["X"], matrix[i][k]["Y"]
                    
                    var starSize = sSize
                    
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    
                    self.star = Star(size: starSize)
                    self.star.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    self.addChild(self.star)
                } else if(levelMatrix[k][i] == 5) {
                    //draw star at matrix[i][k]["X"], matrix[i][k]["Y"]
                    
                    var starSize = sSize
                    
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    
                    var ball = Ball(size: starSize)
                    ball.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    self.addChild(ball)
                    //println(ball.physicsBody?.categoryBitMask)
                }
            }
        }
        
        //self.backgroundColor = UIColor.blackColor()
        
        //        Edges
        
        var playable = CGRect(x: offset, y: hoffset, width: sSize*nWidth, height: sSize*nHeight)
        
        var borderBody = SKPhysicsBody(edgeLoopFromRect: playable)
        self.physicsBody = borderBody;
        self.physicsBody?.friction = 0.0
        self.physicsBody?.restitution = 0.8
        self.physicsBody?.linearDamping = 0.0
        self.physicsBody?.angularDamping = 0.0
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.categoryBitMask = 1 << 3
        
        //        Buttons
        
        var exit = SKSpriteNode(imageNamed: "back_button")
        exit.size = CGSizeMake(exit.frame.size.width/6, exit.frame.size.height/6)
        exit.position = CGPointMake(CGRectGetMidX(self.frame) - 50, 10 + exit.frame.size.height/2)
        exit.name = "exit"
        exit.zPosition = 12
        self.addChild(exit)
        
        var restart = SKSpriteNode(imageNamed: "restart_button")
        restart.size = CGSizeMake(restart.frame.size.width/6, restart.frame.size.height/6)
        restart.position = CGPointMake(CGRectGetMidX(self.frame) + 50, 10 + restart.frame.size.height/2)
        restart.name = "restart"
        restart.zPosition = 12
        self.addChild(restart)
        
        //        Trail
        
        let untypedEmitter : AnyObject = NSKeyedUnarchiver.unarchiveObjectWithFile(NSBundle.mainBundle().pathForResource("Trail", ofType: "sks")!)!;
        let emitter:SKEmitterNode = untypedEmitter as! SKEmitterNode;
        emitter.targetNode = self
        self.puririn.addChild(emitter)
        
        //        Pause
        
//        var pauseButton = SKLabelNode(text: "Pause")
//        pauseButton.position = CGPoint(x: self.size.width/2, y: hoffset/2)
//        pauseButton.name = "pause"
//        self.addChild(pauseButton)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
//        println(self.movePuririn)
//        println(self.firstPoint)
        
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
                self.puririnTouched = true
            }
        }
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch in (touches as! Set<UITouch>) {
            
            if self.movePuririn == true && self.puririnTouched == true  {
                
                self.touchLocation = touch.locationInNode(self)
                
                
                self.dx = (touch.locationInNode(self).x - self.puririn.position.x) * 100
                self.dy = (touch.locationInNode(self).y - self.puririn.position.y) * 100
                
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
                    
                var window = SKShapeNode()
                
                var showWindow = SKAction.runBlock({
                    window = SKShapeNode(rect: CGRect(x: self.size.width/2 - 50, y: self.size.height/2 - 50, width: 100, height: 100), cornerRadius: 5)
                    window.strokeColor = UIColor.redColor()
                    window.lineWidth = 5
                    window.fillColor = UIColor.blueColor()
                    window.name = "window"
                    window.zPosition = 12
                    self.addChild(window)
                })
                var wait = SKAction.waitForDuration(1.5)
                var increase = SKAction.resizeToWidth(100, height: 100, duration: 0.5)
                var sequence = SKAction.sequence([wait,showWindow])
                var sequence2 = SKAction.sequence([wait,increase])
                self.runAction(sequence)
                window.runAction(sequence2)
        }
        
        else if ((contact.bodyA.categoryBitMask == 1<<0) &&
        (contact.bodyB.categoryBitMask != 1<<1)) ||
        ((contact.bodyA.categoryBitMask != 1<<1) &&
            (contact.bodyB.categoryBitMask == 1<<0)) {
                
                println("teste")
                
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
            self.line.lineWidth = 10
            self.line.zPosition = 10
            self.addChild(self.line)
            
            self.speedForce = CGVector(dx: self.dx, dy: self.dy)
        }
        
    }
    
    func restart() {
        
        for node in self.children {
            node.removeFromParent()
        }
        self.newGame()
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
        
        var nextMatrix = LevelMatrixes.getMatrixLevel(1)
        
        dispatch_async(dispatch_get_main_queue()) {
            () -> Void in
            
            var transition = SKTransition.doorsCloseHorizontalWithDuration(0.5)
            var scene = GameScene(size:self.size)
            scene.scaleMode = .AspectFill
            
            for child in self.children {
                child.removeFromParent()
            }
            scene.levelMatrix = nextMatrix
            self.removeFromParent()
            self.scene!.view?.presentScene(scene, transition: transition)
        
        }
        
    }
    
    func playSound(sound: String) {
        
        if(sound=="vortex") {
            
            var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("vortex", ofType: "aiff")!)
            //println(alertSound)
            
            var error:NSError?
            audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
            
            if(audioPlayer.playing) {
                audioPlayer.stop()
            }
            
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
