//
//  GameScene.swift
//  Puririn
//
//  Created by Joao Nassar Galante Guedes on 02/05/15.
//  Copyright (c) 2015 Joao Nassar Galante Guedes. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var movePuririn = false
    var firstPoint = true
    
    var levelMatrix: Array<Array<Int>> = []
    
    var touchLocation = CGPoint()
    
    var puririn: Puririn!
    
    var wayPoints: [CGPoint] = []
    
    var line = SKShapeNode()
    
    var speedForce: CGVector = CGVector()
    
    var angularVelocityPuririn = 0
    var dx = CGFloat(0)
    var dy = CGFloat(0)
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        
        var screenWidth = self.frame.size.width
        var screenHeight = self.frame.size.height
        
        var nWidth:CGFloat = 7
        
        var nHeight:CGFloat = 12
        
        var matrix:Array<Array<NSDictionary>> = []
        
        var sSize = (screenHeight-100)/nHeight
        
        var offset = (screenWidth - (sSize*nWidth))/2
        
        var hoffset = (screenHeight - (sSize*nHeight)) - 15
        
        for var i=0; i<Int(nWidth); i++ {
            
            var lineArray:Array<NSDictionary> = []
            
            for var k=0; k<Int(nHeight); k++ {
                
                var x = CGFloat(i)*sSize + offset
                var y = CGFloat(Int(nHeight-1)-k)*sSize + hoffset
                
                var dictionary = ["X": x, "Y": y, "View": SKSpriteNode()]
                
                lineArray.append(dictionary)
                
                var quadrado = dictionary["View"] as! SKSpriteNode
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
                    
                    var x = matrix[i][k]["X"] as! CGFloat
                    var y = matrix[i][k]["Y"] as! CGFloat
                    
                    self.puririn = Puririn(size:puririnSize)
                    self.puririn.position = CGPoint(x: x + sSize/2, y: y + sSize/2)
                    self.addChild(self.puririn)
                    
                    println(self.puririn.anchorPoint)
                    
                } else if(levelMatrix[i][k] == 3) {
                    //draw vortex at matrix[i][k]["X"],matrix[i][k]["Y"]
                }
                
            }
        }
        
        
        self.backgroundColor = UIColor.blackColor()
        
//        Edges
        
        var playable = CGRect(x: offset, y: hoffset, width: sSize*nWidth, height: sSize*nHeight)
        
        var borderBody = SKPhysicsBody(edgeLoopFromRect: playable)
        self.physicsBody = borderBody;
        self.physicsBody?.friction = 0.0
        self.physicsBody?.restitution = 0.8
        self.physicsBody?.linearDamping = 0.0
        self.physicsBody?.angularDamping = 0.0
        self.physicsBody?.affectedByGravity = false
        
//        Buttons
        
        var exit = SKLabelNode(text: "exit")
        exit.position = CGPoint(x: 3*offset, y: hoffset/2)
        exit.name = "exit"
        self.addChild(exit)
        
        var restart = SKLabelNode(text: "restart")
        restart.position = CGPoint(x: 12*offset, y: hoffset/2)
        restart.name = "restart"
        self.addChild(restart)
      
        
//        Trail
        
        let untypedEmitter : AnyObject = NSKeyedUnarchiver.unarchiveObjectWithFile(NSBundle.mainBundle().pathForResource("Trail", ofType: "sks")!)!;
        let emitter:SKEmitterNode = untypedEmitter as! SKEmitterNode;
        emitter.targetNode = self
        self.puririn.addChild(emitter)
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch in (touches as! Set<UITouch>) {
            
            var name = nodeAtPoint(touch.locationInNode(self)).name
            
            if name == "puririn" {
                
                self.movePuririn = true
            }
            
            else if name == "restart" {
                restart()
            }
            
            else if name == "exit" {
                exit()
            }
        }
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch in (touches as! Set<UITouch>) {
            
            if self.movePuririn == true {
                
                self.touchLocation = touch.locationInNode(self)
                
                
                self.dx = (touch.locationInNode(self).x - self.puririn.position.x) * 80
                self.dy = (touch.locationInNode(self).y - self.puririn.position.y) * 80
                
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
        
        if self.movePuririn == true {
            
            self.puririn.physicsBody?.applyForce(self.speedForce)
            self.puririn.physicsBody?.angularVelocity = CGFloat(self.angularVelocityPuririn)
            
            self.line.removeFromParent()
            
            self.movePuririn = false
            self.firstPoint = true
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
            self.line.strokeColor = UIColor.blackColor()
            self.line.lineWidth = 10
            self.addChild(self.line)
            
            self.speedForce = CGVector(dx: self.dx, dy: self.dy)
        }
        
    }
    
    func restart() {
//        var transition = SKTransition.doorsOpenHorizontalWithDuration(0.5)
//        var scene = GameScene(size:self.size)
//        scene.scaleMode = .AspectFill
//        scene.levelMatrix = self.levelMatrix
//        self.view?.presentScene(scene, transition: transition)
        
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
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
