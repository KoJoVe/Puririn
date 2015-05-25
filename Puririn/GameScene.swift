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
    
    var maxLevels = 150
    
    var delay = false
    
    var arrayN = 0

//    var untypedArray : Array<AnyObject> = [NSKeyedUnarchiver.unarchiveObjectWithFile(NSBundle.mainBundle().pathForResource("Star", ofType: "sks")!)!,NSKeyedUnarchiver.unarchiveObjectWithFile(NSBundle.mainBundle().pathForResource("Star", ofType: "sks")!)!,NSKeyedUnarchiver.unarchiveObjectWithFile(NSBundle.mainBundle().pathForResource("Star", ofType: "sks")!)!]
    
    var starsOnLevel = 0
    
    var animating = false
    
    var musicPlayer:AVAudioPlayer?
    
    var movePuririn:Bool!
    var firstPoint = true
    var restartBool = false
    var puririnTouched: Bool!
    
    var backgroundSound = AVAudioPlayer()
    
    var audioPlayer = AVAudioPlayer()
    var shotPlay = AVAudioPlayer()
    var bouncePlay = AVAudioPlayer()
    var explodePlay = AVAudioPlayer()
    var starPlay = AVAudioPlayer()
    var meteorPlay = AVAudioPlayer()
    var vanishPlay = AVAudioPlayer()
    var sattelitePlay = AVAudioPlayer()
    
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
        
        doVolumeFade()
        
        var bounceSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("bounce", ofType: "wav")!)
        var error:NSError?
        bouncePlay = AVAudioPlayer(contentsOfURL: bounceSound, error: &error)
        
        var alertSound2 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Vanish", ofType: "aif")!)
        var error3:NSError?
        vanishPlay = AVAudioPlayer(contentsOfURL: alertSound2, error: &error3)
        
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Star", ofType: "wav")!)
        var error2:NSError?
        starPlay = AVAudioPlayer(contentsOfURL: alertSound, error: &error2)
        
        var alertSound3 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Sattelite", ofType: "mp3")!)
        var error4:NSError?
        sattelitePlay = AVAudioPlayer(contentsOfURL: alertSound3, error: &error4)
        
        var alertSound5 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Meteor", ofType: "wav")!)
        var error6:NSError?
        meteorPlay = AVAudioPlayer(contentsOfURL: alertSound5, error: &error6)

        self.backgroundColor = UIColor.whiteColor()
        var mainemitter:SKEmitterNode = NSKeyedUnarchiver.unarchiveObjectWithFile(NSBundle.mainBundle().pathForResource("Trail", ofType: "sks")!)! as! SKEmitterNode
        
        self.newGame(mainemitter)
    }
    
    func newGame(mainemitter: SKEmitterNode) {
        
        animating = false
        delay = true
        
        starsOnLevel = 0
        arrayN = 0
        
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
        
        var prop: CGFloat = nWidth*sSize/330.75
        var wallthick:CGFloat = 32 * prop
        var bc = SKSpriteNode(imageNamed: "BackBG")
        var insideBc = SKSpriteNode(imageNamed: "FrontBG")
        var wall = SKSpriteNode(imageNamed: "WallBG")
        
        if(self.level >= 100) {
            bc = SKSpriteNode(imageNamed: "BackBG3")
            insideBc = SKSpriteNode(imageNamed: "FrontBG3")
            wall = SKSpriteNode(imageNamed: "WallBG3")
            wallthick = 16 * prop
            offset2 = 32
            
        } else if(level >= 50) {
            bc = SKSpriteNode(imageNamed: "BackBG2")
            insideBc = SKSpriteNode(imageNamed: "FrontBG2")
            wall = SKSpriteNode(imageNamed: "WallBG2")
        }

        bc.size = CGSizeMake(self.frame.size.width, self.frame.size.height)
        bc.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        bc.name = "Back"
        bc.zPosition = -1
        
        self.addChild(bc)
        
        var extraSize: CGFloat = 74
        var extraSize2: CGFloat = 130
        insideBc.size = CGSizeMake(nWidth*sSize,nHeight*sSize)
        insideBc.position = CGPointMake(offset + insideBc.size.width/2, screenHeight - (insideBc.size.height/2) - offset2)
        insideBc.name = "Fundo"
        insideBc.zPosition = 0
        
        self.addChild(insideBc)
        
        if(self.level == 0) {
            var gifTextures: [SKTexture] = [];
            
            for i in 1...4 {
                gifTextures.append(SKTexture(imageNamed: "Anim\(i)"));
            }
            
            insideBc.runAction(SKAction.repeatActionForever(SKAction.animateWithTextures(gifTextures, timePerFrame: 1)))

        }
        
        if(self.level >= 100) {
            wall.size = CGSizeMake(nWidth*sSize + (wallthick*2),nHeight*sSize + (wallthick*2))
            wall.position = CGPointMake(offset + wall.size.width/2 - wallthick, screenHeight - (wall.size.height/2) - offset2 + wallthick)
            wall.name = "Fundo"
            wall.zPosition = 99
        } else {
            wall.size = CGSizeMake(nWidth*sSize + (wallthick*2),nHeight*sSize + (wallthick*2))
            wall.position = CGPointMake(offset + wall.size.width/2 - wallthick, screenHeight - (wall.size.height/2) - offset2 + wallthick)
            wall.name = "Fundo"
            wall.zPosition = 99
        }

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
                    self.vortex.zPosition = 3
                    self.addChild(self.vortex)
                    
                } else if(levelMatrix[k][i] == 4) {
                    //Draw Star (Unused)
                    
                    var starSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    
                    self.star = Star(size: starSize)
                    self.star.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    self.star.zPosition = 3
                    self.addChild(self.star)
                    
                } else if(levelMatrix[k][i] == 5) {
                    //Draw Wall
                    
                    var starSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    var ball = Ball(size: starSize)
                    
                    ball.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    ball.zPosition = 3
                    self.addChild(ball)
                } else if(levelMatrix[k][i] == 6) {
                    //Draw MovingObject Left
                    
                    var starSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    var ball = MovingObject(size: starSize)
                    
                    ball.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    
                    var action = SKAction.moveBy(CGVectorMake(-ball.velocity, 0), duration: 1.0)
                    var repeat = SKAction.repeatActionForever(action)
                    
                    ball.zPosition = 3
                    self.addChild(ball)
                    
                    ball.runAction(repeat)
                    
                } else if(levelMatrix[k][i] == 7) {
                    //Draw MovingObject Right
                    
                    var starSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    var ball = MovingObject(size: starSize)
                    
                    ball.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    
                    var action = SKAction.moveBy(CGVectorMake(ball.velocity, 0), duration: 1.0)
                    var repeat = SKAction.repeatActionForever(action)
                    ball.direction = 1
                    ball.zPosition = 3
                    self.addChild(ball)
                    
                    ball.runAction(repeat)
                    
                } else if(levelMatrix[k][i] == 8) {
                    //Draw MovingObject Up
                    
                    var starSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    var ball = MovingObject(size: starSize)
                    
                    ball.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    
                    var action = SKAction.moveBy(CGVectorMake(0, ball.velocity), duration: 1.0)
                    var repeat = SKAction.repeatActionForever(action)
                    ball.direction = 3
                    ball.zPosition = 3
                    self.addChild(ball)
                    
                    ball.runAction(repeat)
                    
                } else if(levelMatrix[k][i] == 9) {
                    //Draw MovingObject Down
                    
                    var starSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    var ball = MovingObject(size: starSize)
                    
                    ball.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    
                    var action = SKAction.moveBy(CGVectorMake(0, -ball.velocity), duration: 1.0)
                    var repeat = SKAction.repeatActionForever(action)
                    ball.direction = 2
                    ball.zPosition = 3
                    self.addChild(ball)
                    
                    ball.runAction(repeat)
                    
                } else if(levelMatrix[k][i] == 10) {
                    //Draw Movable
                    
                    var starSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    var ball = MovableObject(size: starSize)
                    
                    ball.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    ball.zPosition = 3
                    self.addChild(ball)
                    
                } else if(levelMatrix[k][i] == 11) {
                    //Draw Ghost
                    
                    var starSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    var ball = GhostObject(size: starSize)
                    
                    ball.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    ball.zPosition = 3
                    self.addChild(ball)
                    
                } else if(levelMatrix[k][i] == 12) {
                    //Draw Explosive
                    
                    var starSize = sSize
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    var ball = Explosive(size: starSize)
                    
                    ball.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    ball.zPosition = 3
                    self.addChild(ball)
                }
            }
        }
        
        //Edges
        
        var playable = CGRect(x: offset, y: hoffset, width: sSize*nWidth, height: sSize*nHeight)
        
        var borderBody = SKPhysicsBody(edgeLoopFromRect: playable)
        self.physicsBody = borderBody
        self.physicsBody?.friction = 0.0
        self.physicsBody?.restitution = 0.8
        self.physicsBody?.linearDamping = 0.0
        self.physicsBody?.angularDamping = 0.0
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.categoryBitMask = 1 << 3
        self.physicsBody?.collisionBitMask = 1 << 5
        
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
        
        
        mainemitter.targetNode = self
        self.puririn.addChild(mainemitter)
        
        NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: Selector("restartOk"), userInfo: nil, repeats: false)
        
    }
    
    func restartOk() {
        delay = false
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch in (touches as! Set<UITouch>) {
            
            var name = nodeAtPoint(touch.locationInNode(self)).name
            
            if name == "restart" {
                
                restart()
                self.restartBool = true
            }
            
            else if (name == "exit" && animating == false) {
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
                
            } else {
              
                restart()
                self.restartBool = true
                
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
    
    func tryFix(contact: SKPhysicsContact) {
        
        var screenWidth = self.frame.size.width
        var screenHeight = self.frame.size.height
        
        var nWidth:CGFloat = 7
        var nHeight:CGFloat = 12
        
        var sSize = (screenHeight-100)/nHeight
        
        var offset = (screenWidth - (sSize*nWidth))/2
        var offset2:CGFloat = 30
        
        if(contact.bodyA.node?.name == "sattelite") {
            if(contact.bodyA.node?.position.x < offset) {
                contact.bodyA.node?.runAction(SKAction.moveToX(offset + contact.bodyA.node!.frame.width, duration: 0))
                fixDirection(contact.bodyA.node as! MovingObject)
            }
            
            if(contact.bodyA.node?.position.x > offset + sSize*nWidth) {
                contact.bodyA.node?.runAction(SKAction.moveToX(offset + sSize*nWidth - contact.bodyA.node!.frame.width, duration: 0))
                fixDirection(contact.bodyA.node as! MovingObject)
            }
            
            if(contact.bodyA.node?.position.y < CGFloat(screenHeight) - 2*(sSize*nHeight/2) - offset2) {
                contact.bodyA.node?.runAction(SKAction.moveToY(CGFloat(screenHeight) - 2*(sSize*nHeight/2) - offset2 + contact.bodyA.node!.frame.width, duration: 0))
                fixDirection(contact.bodyA.node as! MovingObject)
            }
            
            if(contact.bodyA.node?.position.y > CGFloat(screenHeight) - offset2) {
                contact.bodyA.node?.runAction(SKAction.moveToY( CGFloat(screenHeight) - offset2 - contact.bodyA.node!.frame.width, duration: 0))
                fixDirection(contact.bodyA.node as! MovingObject)
            }
        }
        
        if(contact.bodyB.node?.name == "sattelite") {
            if(contact.bodyB.node?.position.x < offset) {
                contact.bodyB.node?.runAction(SKAction.moveToX(offset + contact.bodyB.node!.frame.width, duration: 0))
                fixDirection(contact.bodyB.node as! MovingObject)
            }
            
            if(contact.bodyB.node?.position.x > offset + sSize*nWidth) {
                contact.bodyB.node?.runAction(SKAction.moveToX(offset + sSize*nWidth - contact.bodyB.node!.frame.width, duration: 0))
                fixDirection(contact.bodyB.node as! MovingObject)
            }
            
            if(contact.bodyB.node?.position.y < CGFloat(screenHeight) - 2*(sSize*nHeight/2) - offset2) {
                contact.bodyB.node?.runAction(SKAction.moveToY(CGFloat(screenHeight) - 2*(sSize*nHeight/2) - offset2 + contact.bodyB.node!.frame.width, duration: 0))
                fixDirection(contact.bodyB.node as! MovingObject)
            }
            
            if(contact.bodyB.node?.position.y > CGFloat(screenHeight) - offset2) {
                contact.bodyB.node?.runAction(SKAction.moveToY( CGFloat(screenHeight) - offset2 - contact.bodyB.node!.frame.width, duration: 0))
                fixDirection(contact.bodyB.node as! MovingObject)
            }
        }
    }
    
    func didEndContact(contact: SKPhysicsContact) {
        
        tryFix(contact)
        
        if ((contact.bodyA.categoryBitMask == 1<<0) &&
            (contact.bodyB.categoryBitMask == 1<<4)) ||
            ((contact.bodyA.categoryBitMask == 1<<4) &&
                (contact.bodyB.categoryBitMask == 1<<0)) {
                    
            if(contact.bodyB.categoryBitMask == 1<<4) {
                
                var node = contact.bodyB.node as! GhostObject
                node.appear()
                
            } else {
                
                var node = contact.bodyA.node as! GhostObject
                node.appear()
            }
        }
        
    }
    
    func fixDirection(node: MovingObject) {
        var action = SKAction.moveBy(node.getNewDirectionVector(), duration: 1.0)
        var repeat = SKAction.repeatActionForever(action)
        node.removeAllActions()
        node.runAction(repeat)
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
        tryFix(contact)
        
        if ((contact.bodyA.categoryBitMask == 1<<0) &&
            (contact.bodyB.categoryBitMask == 1<<1)) ||
            ((contact.bodyA.categoryBitMask == 1<<1) &&
                (contact.bodyB.categoryBitMask == 1<<0)) {
                    
                playSound("vortex")
                    
                animating = true
                
                var cleanPuririn = CleanPuririn(size: self.sizeClean)
                cleanPuririn.position = self.puririn.position
                cleanPuririn.zPosition = 10
                self.addChild(cleanPuririn)
                self.puririn.removeFromParent()
                
                var move = SKAction.moveTo(self.vortex.position, duration: 1.5)
                cleanPuririn.runAction(move)
                cleanPuririn.removeAllChildren()
                cleanPuririn.rotateAndShrink()
                
                var window = completeWindow(currentLevel:self.level+1,totalLevel:self.maxLevels,stars: starsOnLevel)
                    
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
                    
                //println(self.background.zPosition)
                var wait = SKAction.waitForDuration(1.5)
                var increase = SKAction.resizeToWidth(ww, height: wh, duration: 0.5)
                var sequence = SKAction.sequence([wait,showWindow])
                var sequence2 = SKAction.sequence([increase])
                self.runAction(sequence)
                window.runAction(sequence2)
                window.animateLabel()
        }
            
        else if ((contact.bodyA.categoryBitMask == 1<<0) &&
            (contact.bodyB.categoryBitMask == 1<<2)) ||
            ((contact.bodyA.categoryBitMask == 1<<2) &&
                (contact.bodyB.categoryBitMask == 1<<0)) {
                    
                    starsOnLevel += 1
                    
                    var point: CGPoint?
                    
                    if(contact.bodyB.categoryBitMask == 1<<2) {
                        
                        point = contact.bodyB.node?.position
                        contact.bodyB.node?.removeFromParent()
                        
                    } else {
                        
                        point = contact.bodyA.node?.position
                        contact.bodyA.node?.removeFromParent()
                        
                    }
                    
                    var stars: AnyObject = NSKeyedUnarchiver.unarchiveObjectWithFile(NSBundle.mainBundle().pathForResource("Star", ofType: "sks")!)!
                    var emitter:SKEmitterNode = stars as! SKEmitterNode
                    emitter.targetNode = self
                    emitter.position = point!
                    emitter.zPosition = 100
                    self.addChild(emitter)
                    
                    arrayN++
                    
                    playSound("star")
                    
                    NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("deleteParticle:"), userInfo: emitter, repeats: false)
                    
        }
        
        else if ((contact.bodyB.categoryBitMask == 1<<5)) ||
            ((contact.bodyA.categoryBitMask == 1<<5)) {
                    
                    var node:MovingObject?
                
                    var node2:MovingObject?
                
                    playSound("sattelite")
                
                    if(contact.bodyB.categoryBitMask == 1<<5) && (contact.bodyA.categoryBitMask == 1<<5){
                        
                        node = contact.bodyB.node as? MovingObject
                        node2 = contact.bodyA.node as? MovingObject
                        
                        var action = SKAction.moveBy(node!.getNewDirectionVector(), duration: 1.0)
                        var repeat = SKAction.repeatActionForever(action)
                        node!.removeAllActions()
                        node!.runAction(repeat)
                        
                        var action2 = SKAction.moveBy(node2!.getNewDirectionVector(), duration: 1.0)
                        var repeat2 = SKAction.repeatActionForever(action2)
                        node2!.removeAllActions()
                        node2!.runAction(repeat2)
                        
                    } else if (contact.bodyB.categoryBitMask == 1<<5) {
                    
                        node = contact.bodyB.node as? MovingObject
                        
                        var action = SKAction.moveBy(node!.getNewDirectionVector(), duration: 1.0)
                        var repeat = SKAction.repeatActionForever(action)
                        node!.removeAllActions()
                        node!.runAction(repeat)
                        
                    } else {
                        node = contact.bodyA.node as? MovingObject
                        
                        var action = SKAction.moveBy(node!.getNewDirectionVector(), duration: 1.0)
                        var repeat = SKAction.repeatActionForever(action)
                        node!.removeAllActions()
                        node!.runAction(repeat)
                    }
                   
        }
        
        else if ((contact.bodyB.categoryBitMask == 1<<6)) ||
            ((contact.bodyA.categoryBitMask == 1<<6)) {
                
                playSound("explode")
                
                if (contact.bodyB.categoryBitMask == 1<<6) {
                    
                    var point: CGPoint?
                    point = contact.bodyB.node?.position
                    
                    contact.bodyB.node?.removeFromParent()
                    
                    var stars: AnyObject = NSKeyedUnarchiver.unarchiveObjectWithFile(NSBundle.mainBundle().pathForResource("Explosion", ofType: "sks")!)!
                    var emitter:SKEmitterNode = stars as! SKEmitterNode
                    emitter.targetNode = self
                    emitter.position = point!
                    emitter.zPosition = 100
                    self.addChild(emitter)
                }
                
                else if (contact.bodyA.categoryBitMask == 1<<6) {
                    
                    var point: CGPoint?
                    point = contact.bodyA.node?.position
                    
                    contact.bodyA.node?.removeFromParent()
                    
                    var stars: AnyObject = NSKeyedUnarchiver.unarchiveObjectWithFile(NSBundle.mainBundle().pathForResource("Explosion", ofType: "sks")!)!
                    var emitter:SKEmitterNode = stars as! SKEmitterNode
                    emitter.targetNode = self
                    emitter.position = point!
                    emitter.zPosition = 100
                    self.addChild(emitter)
                }
                
                self.puririn.removeFromParent()
                
        } else if ((contact.bodyA.categoryBitMask == 1<<0) &&
            (contact.bodyB.categoryBitMask == 1<<4)) ||
            ((contact.bodyA.categoryBitMask == 1<<4) &&
                (contact.bodyB.categoryBitMask == 1<<0)) {
                    
                    playSound("vanish")
                    
                    if(contact.bodyB.categoryBitMask == 1<<4) {
                        
                        var node = contact.bodyB.node as! GhostObject
                        node.disappear()
                        
                    } else {
                        
                        var node = contact.bodyA.node as! GhostObject
                        node.disappear()
                    }
                    
        } else if ((contact.bodyB.categoryBitMask == 1<<7)||(contact.bodyA.categoryBitMask == 1<<7))  {
                    
                    playSound("meteor")
                    
        } else {
            
            playSound("bounce")
        }
    }
    
    func deleteParticle(timer:NSTimer) {
        
        var part = timer.userInfo as! SKEmitterNode
        
        part.runAction(SKAction.fadeAlphaTo(0, duration: 1.0), completion: {
            part.removeFromParent()
        })
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
        
        if(delay==false) {
            
            playSound("restart")
         
            for node in self.children {
                node.removeFromParent()
            }
            
            var mainemitter:SKEmitterNode = NSKeyedUnarchiver.unarchiveObjectWithFile(NSBundle.mainBundle().pathForResource("Trail", ofType: "sks")!)! as! SKEmitterNode
            
            self.newGame(mainemitter)
            
        }
        
    }
    
    func exit() {
        
        dispatch_async(dispatch_get_main_queue()) {
            () -> Void in
            
            var transition = SKTransition.fadeWithDuration(1)
            var scene = LevelSelector(size:self.size)
            
            if(self.level <= 49) {
                scene.theGalaxy = 0
            } else if (self.level <= 99) {
                scene.theGalaxy = 1
            } else {
                scene.theGalaxy = 2
            }

            self.scene!.view?.presentScene(scene, transition: transition)
            
        }
        
    }
    
    override func willMoveFromView(view: SKView) {
     
        for child in self.children {
            child.removeFromParent()
        }
    }
    
    func nextStage() {
        
        dispatch_async(dispatch_get_main_queue()) {
            () -> Void in
            
            var transition = SKTransition.fadeWithDuration(1)
            
            if (self.level + 1 >= 150) {
                
                var scene = StartScreen(size:self.size)
                scene.complete = true
                
                self.removeFromParent()
                self.scene!.view?.presentScene(scene, transition: transition)
            
            } else if (self.level + 1 == 50) {
                
                var scene = LevelSelector(size:self.size)
                
                
                if((1 + self.starsOnLevel) > UserLevel.getLevelStars(self.level)) {
                    UserLevel.setLevelStars(self.level, stars: 1 + self.starsOnLevel)
                }
                
                if(UserLevel.getUserLevel()<self.level + 1) {
                    scene.newGalaxy = 1
                    UserLevel.setUserLevel(self.level + 1)
                }
                
                self.removeFromParent()
                self.scene!.view?.presentScene(scene, transition: transition)
            
            } else if (self.level + 1 == 100) {
                
                var scene = LevelSelector(size:self.size)
                
                
                if((1 + self.starsOnLevel) > UserLevel.getLevelStars(self.level)) {
                    UserLevel.setLevelStars(self.level, stars: 1 + self.starsOnLevel)
                }
                
                if(UserLevel.getUserLevel()<self.level + 1) {
                    scene.newGalaxy = 2
                    UserLevel.setUserLevel(self.level + 1)
                }
                
                self.removeFromParent()
                self.scene!.view?.presentScene(scene, transition: transition)
            
            } else {
                
                var scene = GameScene(size:self.size)
                scene.level = self.level + 1
                
                if((1 + self.starsOnLevel) > UserLevel.getLevelStars(self.level)) {
                    UserLevel.setLevelStars(self.level, stars: 1 + self.starsOnLevel)
                }
                
                if(UserLevel.getUserLevel()<scene.level) {
                    UserLevel.setUserLevel(scene.level)
                }
                
                scene.levelMatrix = LevelMatrixes.getMatrixLevel(scene.level)
                
                self.removeFromParent()
                self.scene!.view?.presentScene(scene, transition: transition)
            }
        
        }
        
    }
    
    func playSound(sound: String) {
        
        //if(UserLevel.getSound() == 1) {
        
        if(sound=="restart") {
            
            var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Restart", ofType: "wav")!)
            //println(alertSound)
            
            var error:NSError?
            audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
            
            if(UserLevel.getSound() == 1) {
                audioPlayer.volume = 0.025
            } else {
                audioPlayer.volume = 0
            }
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }

        
            if(sound=="vortex") {
                
                var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("vortex", ofType: "aiff")!)
                //println(alertSound)
                
                var error:NSError?
                audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
                if(UserLevel.getSound() == 1) {
                    audioPlayer.volume = 0.12
                } else {
                    audioPlayer.volume = 0
                }
                audioPlayer.prepareToPlay()
                audioPlayer.play()
            }
            
            if(sound=="shot") {
                
                var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("shot", ofType: "wav")!)
                //println(alertSound)
                
                var error:NSError?
                shotPlay = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
                if(UserLevel.getSound() == 1) {
                    shotPlay.volume = 0.07
                } else {
                    shotPlay.volume = 0
                }
                shotPlay.prepareToPlay()
                shotPlay.play()
            }
            
            if(sound=="charge") {
                
                var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("charge", ofType: "wav")!)
                //println(alertSound)
                
                var error:NSError?
                shotPlay = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
                if(UserLevel.getSound() == 1) {
                    shotPlay.volume = 0.03
                } else {
                    shotPlay.volume = 0
                }
                shotPlay.prepareToPlay()
                shotPlay.play()
            }
            
            if(sound=="bounce") {
                
                if(!bouncePlay.playing) {
                    if(UserLevel.getSound() == 1) {
                        bouncePlay.volume = 0.07
                    } else {
                        bouncePlay.volume = 0
                    }
                    bouncePlay.prepareToPlay()
                    bouncePlay.play()
                }
            }
        
        if(sound=="star") {
            
            //if(!starPlay.playing) {
                if(UserLevel.getSound() == 1) {
                    starPlay.volume = 0.85
                } else {
                    starPlay.volume = 0
                }
                starPlay.currentTime = 0
                starPlay.prepareToPlay()
                starPlay.play()
            //}
        }
        
        if(sound=="vanish") {
            
            if(!vanishPlay.playing) {
                if(UserLevel.getSound() == 1) {
                    vanishPlay.volume = 0.6
                } else {
                    vanishPlay.volume = 0
                }
                vanishPlay.currentTime = 0
                vanishPlay.prepareToPlay()
                vanishPlay.play()
            }
        }
        
        if(sound=="explode") {
            
            var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Explosion", ofType: "mp3")!)
            //println(alertSound)
            
            var error:NSError?
            explodePlay = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
            
            if(!explodePlay.playing) {
                if(UserLevel.getSound() == 1) {
                    explodePlay.volume = 0.15
                } else {
                    explodePlay.volume = 0
                }
                explodePlay.prepareToPlay()
                explodePlay.play()
            }
        }
        
        if(sound=="sattelite") {
            
            if(!sattelitePlay.playing) {
                if(UserLevel.getSound() == 1) {
                    sattelitePlay.volume = 0.035
                } else {
                    sattelitePlay.volume = 0
                }
                sattelitePlay.prepareToPlay()
                sattelitePlay.play()
            }
        }
        
        if(sound=="meteor") {
            
            if(!meteorPlay.playing) {
                if(UserLevel.getSound() == 1) {
                    meteorPlay.volume = 0.06
                } else {
                    meteorPlay.volume = 0
                }
                meteorPlay.currentTime = 0
                meteorPlay.prepareToPlay()
                meteorPlay.play()
            }
        }
        //}
    }
    
    func doVolumeFade()
    {
        if(musicPlayer != nil) {
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
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
